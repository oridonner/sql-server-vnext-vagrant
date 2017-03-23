set -e
set -x

RUN_ONCE_FLAG=~/.mssqlserver_env_build_time

if [ -e "$RUN_ONCE_FLAG" ]; then
  echo "SQL Server environment is already installed."
  exit 0
fi
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server.list | sudo tee /etc/apt/sources.list.d/mssql-server.list
sudo su
apt-get -y update
apt-get install -y mssql-server
apt-get install -y mssql-server-agent
export SA_PASSWORD='vagrant@2017' 
/opt/mssql/bin/mssql-conf setup accept-eula 

