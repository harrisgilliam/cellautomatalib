//
// SessionImpl.h
//
// $Id: //poco/1.4/Data/ODBC/include/Poco/Data/ODBC/SessionImpl.h#1 $
//
// Library: Data/ODBC
// Package: ODBC
// Module:  SessionImpl
//
// Definition of the SessionImpl class.
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


#ifndef DataConnectors_ODBC_SessionImpl_INCLUDED
#define DataConnectors_ODBC_SessionImpl_INCLUDED


#include "Poco/Data/ODBC/ODBC.h"
#include "Poco/Data/ODBC/Binder.h"
#include "Poco/Data/ODBC/Handle.h"
#include "Poco/Data/ODBC/ODBCException.h"
#include "Poco/Data/AbstractSessionImpl.h"
#include "Poco/SharedPtr.h"
#ifdef POCO_OS_FAMILY_WINDOWS
#include <windows.h>
#endif
#include <sqltypes.h>


namespace Poco {
namespace Data {
namespace ODBC {


class ODBC_API SessionImpl: public Poco::Data::AbstractSessionImpl<SessionImpl>
	/// Implements SessionImpl interface
{
public:
	SessionImpl(const std::string& fileName, 
		Poco::Any maxFieldSize = std::size_t(1024), 
		bool enforceCapability=false, // @deprecated
		bool autoBind=false,
		bool autoExtract=false);
		/// Creates the SessionImpl. Opens a connection to the database

	~SessionImpl();
		/// Destroys the SessionImpl.

	Poco::Data::StatementImpl* createStatementImpl();
		/// Returns an ODBC StatementImpl

	void begin();
		/// Starts a transaction

	void commit();
		/// Commits and ends a transaction

	void rollback();
		/// Aborts a transaction

	void close();
		/// Closes the connection

	bool isConnected();
		/// Returns true iff session is connected.

	bool isTransaction();
		/// Returns true iff a transaction is in progress.

	void setEnforceCapability(const std::string&, bool val);
		/// Configures session to enforce driver capability check 
		/// after connection.
		/// If capability check is enforced and driver is not capable, 
		/// connection is terminated.
		/// Since some drivers do not cooperate, the default behavior 
		/// is not checking capability.

	bool getEnforceCapability(const std::string& name="");
		/// Returns the driver capability check configuration value.

	bool canTransact();
		/// Returns true if connection is transaction-capable.

	void autoCommit(const std::string&, bool val);
		/// Sets autocommit property for the session.

	bool isAutoCommit(const std::string& name="");
		/// Returns autocommit property value.

	void autoBind(const std::string&, bool val);
		/// Sets automatic binding for the session.

	bool isAutoBind(const std::string& name="");
		/// Returns true if binding is automatic for this session.

	void autoExtract(const std::string&, bool val);
		/// Sets automatic extraction for the session.

	bool isAutoExtract(const std::string& name="");
		/// Returns true if extraction is automatic for this session.

	void setMaxFieldSize(const std::string& rName, const Poco::Any& rValue);
		/// Sets the max field size (the default used when column size is unknown).
		
	Poco::Any getMaxFieldSize(const std::string& rName="");
		/// Returns the max field size (the default used when column size is unknown).

	int maxStatementLength();
		/// Returns maximum length of SQL statement allowed by driver.

	const ConnectionHandle& dbc() const;
		/// Returns the connection handle.

private:
	static const int FUNCTIONS = SQL_API_ODBC3_ALL_FUNCTIONS_SIZE;

	void open();
		/// Opens a connection to the Database

	bool isCapable();
		/// Returns true if driver supports specified function, or if
		/// specified function is zero, all required functions.
		
	void checkError(SQLRETURN rc, const std::string& msg="");

	std::string _connect;
	const ConnectionHandle _db;
	Poco::Any _maxFieldSize;
	bool _enforceCapability;
	bool _autoBind;
	bool _autoExtract;
};


///
/// inlines
///
inline void SessionImpl::checkError(SQLRETURN rc, const std::string& msg)
{
	if (Utility::isError(rc))
		throw ConnectionException(_db, msg);
}


inline const ConnectionHandle& SessionImpl::dbc() const
{
	return _db;
}


inline void SessionImpl::commit()
{
	if (!isAutoCommit())
		checkError(SQLEndTran(SQL_HANDLE_DBC, _db, SQL_COMMIT));
}


inline void SessionImpl::rollback()
{
	if (!isAutoCommit())
		checkError(SQLEndTran(SQL_HANDLE_DBC, _db, SQL_ROLLBACK));
}


inline void SessionImpl::setMaxFieldSize(const std::string& rName, const Poco::Any& rValue)
{
	_maxFieldSize = rValue;
}

		
inline Poco::Any SessionImpl::getMaxFieldSize(const std::string& rName)
{
	return _maxFieldSize;
}


} } } // namespace Poco::Data::ODBC


#endif // DataConnectors_ODBC_SessionImpl_INCLUDED
