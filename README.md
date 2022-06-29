# pyodbc-example

quick and dirty example of how to get pyodbc working with dremio andthe M1 mac


## do the following steps

```sh
echo "installing rosetta"
/usr/sbin/softwareupdate --install-rosetta
echo "installing x86_64 architecture homebrew"
cd ~/Downloads
mkdir homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
sudo mv homebrew /usr/local/homebrew
echo "install python x86_64 and unixodbc x86_64
arch -x86_64 /usr/local/homebrew/bin/brew install python unixodbc

echo "setting up virtual env for new python"
/usr/local/homebrew/bin/python3 -m venv venv
echo "install pyodbc"
./venv/bin/pip install pyodbc
echo "running main.py script make sure to update port, host and username and password" 
./venv/bin/python main.py

# also add the following line to /Library/Dremio/ODBC/lib/dremio.drillodbc.ini
# ODBCInstLib=/usr/local/homebrew/opt/unixodbc/lib/libodbcinst.2.dylib
```
