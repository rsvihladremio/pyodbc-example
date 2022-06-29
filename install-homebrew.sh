#!/bin/sh

# for the M1 mac
/usr/sbin/softwareupdate --install-rosetta
cd ~/Downloads
mkdir homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
sudo mv homebrew /usr/local/homebrew
arch -x86_64 /usr/local/homebrew/bin/brew install python unixodbc

/usr/local/homebrew/bin/python3 -m venv venv
./venv/bin/pip install pyodbc
./venv/bin/python changeme.py
# also add the following line to /Library/Dremio/ODBC/lib/dremio.drillodbc.ini
# ODBCInstLib=/usr/local/homebrew/opt/unixodbc/lib/libodbcinst.2.dylib
