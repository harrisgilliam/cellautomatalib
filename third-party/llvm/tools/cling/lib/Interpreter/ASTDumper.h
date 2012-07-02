//--------------------------------------------------------------------*- C++ -*-
// CLING - the C++ LLVM-based InterpreterG :)
// version: $Id: ASTDumper.h 42136 2011-11-19 06:05:16Z axel $
// author:  Vassil Vassilev <vasil.georgiev.vasilev@cern.ch>
//------------------------------------------------------------------------------

#ifndef CLING_AST_DUMPER_H
#define CLING_AST_DUMPER_H

#include "clang/AST/ASTConsumer.h"
#include "clang/AST/DeclGroup.h"

namespace cling {

  class ASTDumper : public clang::ASTConsumer {

  private:
    bool Dump;
    
  public:
    ASTDumper(bool Dump = false)
      : Dump(Dump) { }
    virtual ~ASTDumper();
    
    virtual bool HandleTopLevelDecl(clang::DeclGroupRef D);

  private:
    void HandleTopLevelSingleDecl(clang::Decl* D);
  };

} // namespace cling

#endif // CLING_AST_DUMPER_H
