//
// Preparation.cpp
//
// $Id: //poco/1.4/Data/testsuite/src/Preparation.cpp#1 $
//
// Copyright (c) 2006, Applied Informatics Software Engineering GmbH.
// and Contributors.
//
// Permission is hereby granted, free of charge, to any person or organization
// obtaining a copy of the software and accompanying documentation covered by
// this license (the "Software") to use, reproduce, display, distribute,
// execute, and transmit the Software, and to prepare derivative works of the
// Software, and to permit third-parties to whom the Software is furnished to
// do so, all subject to the following:
// 
// The copyright notices in the Software and this entire statement, including
// the above license grant, this restriction and the following disclaimer,
// must be included in all copies of the Software, in whole or in part, and
// all derivative works of the Software, unless such copies or derivative
// works are solely in the form of machine-executable object code generated by
// a source language processor.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
// SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
// FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
// DEALINGS IN THE SOFTWARE.
//


#include "Preparation.h"
#include "Poco/Data/BLOB.h"
#include "Poco/Exception.h"


namespace Poco {
namespace Data {
namespace Test {


Preparation::Preparation()
{
}


Preparation::~Preparation()
{
}


void Preparation::prepare(std::size_t pos, Poco::Int8)
{
}


void Preparation::prepare(std::size_t pos, Poco::UInt8)
{
}


void Preparation::prepare(std::size_t pos, Poco::Int16)
{
}


void Preparation::prepare(std::size_t pos, Poco::UInt16)
{
}


void Preparation::prepare(std::size_t pos, Poco::Int32)
{
}


void Preparation::prepare(std::size_t pos, Poco::UInt32)
{
}


void Preparation::prepare(std::size_t pos, Poco::Int64)
{
}


void Preparation::prepare(std::size_t pos, Poco::UInt64)
{
}


void Preparation::prepare(std::size_t pos, bool)
{
}


void Preparation::prepare(std::size_t pos, float)
{
}


void Preparation::prepare(std::size_t pos, double)
{
}


void Preparation::prepare(std::size_t pos, char)
{
}


void Preparation::prepare(std::size_t pos, const std::string&)
{
}


void Preparation::prepare(std::size_t pos, const Poco::Data::BLOB&)
{
}


void Preparation::prepare(std::size_t pos, const Poco::Any&)
{
}


} } } // namespace Poco::Data::Test
