//--------------------------------------------------------------------*- C++ -*-
// CLING - the C++ LLVM-based InterpreterG :)
// version: $Id: CValuePrinter.h 42199 2011-11-23 15:34:40Z vvassilev $
// author:  Vassil Vassilev <vasil.georgiev.vasilev@cern.ch>
//------------------------------------------------------------------------------

#ifndef CLING_VALUEPRINTERC_H
#define CLING_VALUEPRINTERC_H
#ifdef __cplusplus
extern "C"
#endif
void cling_PrintValue(void* /*clang::Expr**/ E,
                      void* /*clang::ASTContext**/ C,
                      const void* value);

#endif // CLING_VALUEPRINTERC_H
