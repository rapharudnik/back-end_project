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
cat /etc/apt/sources.list.d/mongodb-org-8.0.list
dpkg --print-architecture
apt-cache policy mongodb-org
ls /var/lib/apt/lists/ | grep mongodb
zcat /var/lib/apt/lists/repo.mongodb.org_apt_debian_dists_trixie_mongodb-org_8.0_main_binary-amd64_Packages 2>/dev/null | wc -l
sudo sed -i 's/trixie/bookworm/' /etc/apt/sources.list.d/mongodb-org-8.0.list
cat /etc/apt/sources.list.d/mongodb-org-8.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
mongosh
sudo apt update
sudo apt install git
git --version
pwd
npm install
git init
git config --global user.name "Seu Nome"
git config --global user.email "seu-email@exemplo.com"
git config --global user.name "rapharudnik"
git config --global user.email "rapharudnik@gmail.com"
echo "node_modules/
.env
*.log" > .gitignore
git add .
git commit -m "Primeiro commit do backend"
git remote add origin https://github.com/rapharudnik/back-end_project.git
git branch -M main
git push -u origin main
git config --global credential.helper store
git push
npm install
ls -la
cat package-lock.json
git log --oneline -- package.json
cat .gitignore
find / -maxdepth 4 -name "package.json" 2>/dev/null
npm init -y
