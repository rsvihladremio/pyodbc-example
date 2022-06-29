import pyodbc

# Using a DSN, but providing a password as well
#cnxn = pyodbc.connect('DSN=Dremio Connector;PWD=CHANGME')
cnxn = pyodbc.connect('DRIVER={/Library/Dremio/ODBC/lib/libdrillodbc_sbu.dylib};DATABASE=Samples.samples.dremio.com;SERVER=localhost;UID=dremio;PWD=dremio123;PORT=31010;CONNECTIONTYPE=Direct;',autocommit=True)

# Create a cursor from the connection
cursor = cnxn.cursor()

rows = cursor.execute('SHOW DATABASES')
for row in rows:
    print(row)

