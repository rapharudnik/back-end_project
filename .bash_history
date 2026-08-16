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
npm install
npm run start
cat package.json
ls -la
find . -maxdepth 2 -name "*.js" -not -path "./node_modules/*"
cd ~
git clone https://github.com/rapharudnik/web_project_around_auth.git /tmp/old_backend
rsync -av --exclude='.git' /tmp/old_backend/ ~/
sudo apt-get install -y rsync
rsync -av --exclude='.git' /tmp/old_backend/ ~/
ls -la
cd ~
rm -rf blocks public src
rm -f index.html vite.config.js favicon.ico.svg eslint.config.js .prettierignore .editorconfig README.md package.json package-lock.json .gitignore
ls -la
git clone https://github.com/rapharudnik/web_project_around_express.git /tmp/backend_correto
rsync -av --exclude='.git' /tmp/backend_correto/ ~/
ls -la
git add .
git commit -m "Adiciona código do backend do projeto Around (Express)"
git push -u origin main --force
git rm --cached .git-credentials
echo ".git-credentials" >> .gitignore
git add .gitignore
git rm --cached .lesshst
git commit --amend -m "Adiciona código do backend do projeto Around (Express)"
git push -u origin main --force
npm install
cat package.json
npm run start
npm start
sudo npm install pm2 -g
pwd
cd ~
ls
cd ~
ls
pm2 start app.js
pm2 startup
pm2 save
sudo apt update
sudo apt install -y nginx
sudo apt install ufw
sudo ufw allow 'Nginx Full'
sudo ufw allow OpenSSH
sudo ufw enable
sudo ufw allow ssh
sudo ufw status
sudo ufw show added
rapha_rudnik@around:~$ 
sudo ufw enable
sudo systemctl enable --now nginx
grep -i "listen\|PORT" app.js
sudo ufw allow 3001/tcp
sudo ufw status
sudo apt install nginx
sudo systemctl enable --now nginx
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
npm run start 
sudo npm install -g pm2
pm2 start app.js --name backend
pm2 status
pm2 startup
pm2 save
sudo env
pm2 status
pm2 logs backend --lines 50
sudo ss -tlnp | grep 3001
sudo cat /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
sudo sed -i 's/proxy_pass http:\/\/localhost:3000;/proxy_pass http:\/\/localhost:3001;/' /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
pm2 status
pm2 logs app
pm2 stop app
pm2 delete app
pm2 status
pm2 save
pm2 status
sudo ss -tlnp | grep 3001
sudo tail -n 30 /var/log/nginx/error.log
grep proxy_pass /etc/nginx/sites-available/default
curl http://localhost:3001
pm2 restart backend
curl http://localhost:3001
pm2 logs backend --lines 100 --nostream
sudo nginx -t
sudo systemctl reload nginx
sudo nano /etc/nginx/nginx.conf
sudo nginx -t
sudo systemctl reload nginx
sudo apt update
sudo apt install -y snapd
sudo snap install core
sudo snap refresh core
sudo apt-get remove -y certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
certbot --version
sudo certbot --nginx
nslookup rr.twilightparadox.com
sudo nano /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl reload nginx
sudo certbot --nginx
sudo systemctl restart nginx
git pull
pm2 restart app
pm2 restart backend
pm2 status
