//------------------------------------------------------------------------------
// CLING - the C++ LLVM-based InterpreterG :)
// version: $Id: ValuePrinter.cpp 42239 2011-11-25 11:25:10Z vvassilev $
// author:  Vassil Vassilev <vasil.georgiev.vasilev@cern.ch>
//------------------------------------------------------------------------------

#include "cling/Interpreter/ValuePrinter.h"

#include "cling/Interpreter/CValuePrinter.h"
#include "cling/Interpreter/ValuePrinterInfo.h"

#include "clang/AST/Decl.h"
#include "clang/AST/Expr.h"
#include "clang/AST/Type.h"

#include "llvm/Support/raw_ostream.h"

#include <string>

// Implements the CValuePrinter interface.
extern "C" void cling_PrintValue(void* /*clang::Expr**/ E,
                      void* /*clang::ASTContext**/ C,
                      const void* value) {
  clang::Expr* Exp = (clang::Expr*)E;
  clang::ASTContext* Context = (clang::ASTContext*)C;
  cling::ValuePrinterInfo VPI(Exp, Context);
  cling::printValue(llvm::outs(), value, value, VPI);

  cling::flushOStream(llvm::outs());
}


static void StreamChar(llvm::raw_ostream& o, char v) {
  o << '"' << v << "\"\n";
}

static void StreamCharPtr(llvm::raw_ostream& o, const char* const v) {
  o << '"';
  const char* p = v;
  for (;*p && p - v < 128; ++p) {
    o << *p;
  }
  if (*p) o << "\"...\n";
  else o << "\"\n";
}

static void StreamRef(llvm::raw_ostream& o, const void* v) {
  o <<"&" << v << "\n";
}
  
static void StreamPtr(llvm::raw_ostream& o, const void* v) {
  o << *(intptr_t
*)v << "\n";
}
  
static void StreamObj(llvm::raw_ostream& o, const void* v) {
  // TODO: Print the object members.
  o << "@" << v << "\n";
}

static void StreamValue(llvm::raw_ostream& o, const void* const p, 
                        const cling::ValuePrinterInfo& VPI) {
  clang::QualType Ty = VPI.getExpr()->getType();
  if (const clang::BuiltinType *BT
           = llvm::dyn_cast<clang::BuiltinType>(Ty.getCanonicalType())) {
    switch (BT->getKind()) {
    case clang::BuiltinType::Bool:
      if (*(bool*)p) o << "true\n";
      else o << "false\n"; break;
    case clang::BuiltinType::Char_U:
    case clang::BuiltinType::UChar:
    case clang::BuiltinType::Char_S:
    case clang::BuiltinType::SChar:  StreamChar(o, *(char*)p); break;
    case clang::BuiltinType::Int:    o << *(int*)p << "\n"; break;
    case clang::BuiltinType::Float:  o << *(float*)p << "\n"; break;
    case clang::BuiltinType::Double: o << *(double*)p << "\n"; break;
    default:
      StreamObj(o, p);
    }
  } 
  else if (Ty.getAsString().compare("std::string") == 0) {
    StreamObj(o, p);
    o <<"c_str: ";
    StreamCharPtr(o, ((const char*) (*(const std::string*)p).c_str()));
  } 
  else if (Ty->isEnumeralType()) {
    StreamObj(o, p);
    int value = *(int*)p;
    clang::EnumDecl* ED = Ty->getAs<clang::EnumType>()->getDecl();
    bool IsFirst = true;
    const clang::ASTContext& C = *VPI.getASTContext();
    llvm::APSInt ValAsAPSInt = C.MakeIntValue(value, C.IntTy);
    for (clang::EnumDecl::enumerator_iterator I = ED->enumerator_begin(),
           E = ED->enumerator_end(); I != E; ++I) {
      if ((*I)->getInitVal() == ValAsAPSInt) {
        if (!IsFirst) {
          o << " ? ";
        }
        o << "(" << (*I)->getQualifiedNameAsString() << ")";
        IsFirst = false;
      }
    }
    o << " : (int) " << value << "\n";
  } 
  else if (Ty->isReferenceType())
    StreamRef(o, p);
  else if (Ty->isPointerType()) {
    clang::QualType PointeeTy = Ty->getPointeeType();
    if (PointeeTy->isCharType())
      StreamCharPtr(o, (const char*)p);
    else 
      StreamPtr(o, p);
  }
  else
    StreamObj(o, p);
}
  
namespace cling {
  void printValueDefault(llvm::raw_ostream& o, const void* const p,
                         const ValuePrinterInfo& VPI) {
    const clang::Expr* E = VPI.getExpr();
    o << "(";
    o << E->getType().getAsString();
    if (E->isRValue()) // show the user that the var cannot be changed
      o << " const";
    o << ") ";
    StreamValue(o, p, VPI);
  }

  void flushOStream(llvm::raw_ostream& o) {
    o.flush();
  }

} // end namespace cling
