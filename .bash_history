cd ~/.ssh
ls
ls -a
sudo mkdir -p -m 700 .ssh
sudo touch .ssh/authorized_keys
sudo chmod 664 .ssh/authorized_keys
sudo chown -R something:something .ssh
whoami
pwd
cd ~
pwd
sudo mkdir -p -m 700 .ssh
sudo touch .ssh/authorized_keys
sudo chmod 664 .ssh/authorized_keys
sudo chown -R rapha_rudnik:rapha_rudnik .ssh
ls -la .ssh
pwd
sudo mkdir -p -m 700 .ssh
sudo touch .ssh/authorized_keys
sudo chmod 664 .ssh/authorized_keys
sudo chown -R rapha_rudnik:rapha_rudnik .ssh
ls -la .ssh
cd ~
pwd
ls -la .ssh
sudo rmdir .ssh/.ssh
ls -la .ssh/.ssh
sudo rm -r .ssh/.ssh
ls -la .ssh
sudo touch .ssh/authorized_keys
sudo chmod 664 .ssh/authorized_keys
sudo chown -R rapha_rudnik:rapha_rudnik .ssh
ls -la .ssh
sudo nano ./.ssh/authorized_keys
cat .ssh/authorized_keys
curl -sL https://deb.nodesource.com/setup_25.x | sudo -E bash -
sudo apt-get install -y nodejs
node -v
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
sudo apt-get install gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-4.2.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-4.2.gpg --dearmor
lsb_release -cs
cat /etc/os-release
sudo apt-get update
sudo apt-get install -y gnupg curl
curl -fsSL https://pgp.mongodb.com/server-8.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg --dearmor
echo "deb [ signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/debian trixie/mongodb-org/8.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo apt-get update
sudo apt-get install -y mongodb-org
