sudo apt update
sudo apt install -y git
git clone  https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone git@github.com:upszot/UTN-FRA_SO_Examenes.git
cd
ls
cd /home/quintero/
ls
git clone git@github.com:upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
# 1. Correr el script de precondición
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
# 2. Recargar tu configuración de bash
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
ls -la ~
source ~/.bashrc
lsblk
cd ~/RTA_Examen_20260619
nano Punto_A.sh 
chmod +x Punto_A.sh
./Punto_A.sh
lsblk
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl restart docker
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo nano /usr/local/bin/QuinteroAltaUser-Groups.sh
sudo chmod +x /usr/local/bin/QuinteroAltaUser-Groups.sh
sudo /usr/local/bin/QuinteroAltaUser-Groups.sh quintero ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /etc/passwd | grep 2P_202406
ls -l /work/
cp /usr/local/bin/QuinteroAltaUser-Groups.sh ~/RTA_Examen_20260619/
nano ~/RTA_Examen_20260619/Punto_B.sh
chmod +x ~/RTA_Examen_20260619/Punto_B.sh
cd ~/UTN-FRA_SO_Examenes/202406/docker/
nano index.html
nano Dockerfile
docker login
docker build -t niquintero001/web1-quintero:latest .
docker push niquintero001/web1-quintero:latest
sudo docker build -t niquintero001/web1-quintero:latest .
sudo docker push niquintero001/web1-quintero:latest
sudo docker login
sudo docker push niquintero001/web1-quintero:latest
sudo docker push nquintero001/web1-quintero:latest
sudo docker build -t nquintero001/web1-quintero:latest .
sudo docker login -u nquintero001
docker login
sudo docker push nquintero001/web1-quintero:latest
sudo docker rmi niquintero001/web1-quintero:latest
# Asegurate de estar en la carpeta de docker
cd ~/UTN-FRA_SO_Examenes/202406/docker/
# Creá el script run.sh si no lo creaste antes
nano run.sh
cd ~/UTN-FRA_SO_Examenes/202406/docker/
nano run.sh
chmod +x run.sh 
./run.sh 
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
nano roles/202406/templates/datos_alumno.j2
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
mkdir -p roles/202406/templates/
nano roles/202406/templates/datos_alumno.j2
nano roles/202406/templates/datos_equipo.j2
nano roles/202406/tasks/main.yml
ls ~/UTN-FRA_SO_Examenes/202406/ansible/roles/
mkdir -p ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_alumno.j2
IP: {{ ansible_default_ipv4.address }}
Distribución: {{ ansible_distribution }}
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/templates/datos_equipo.j2
nano ~/UTN-FRA_SO_Examenes/202406/ansible/roles/2do_parcial/tasks/main.yml
ansible-playbook -i hosts playbook.yml -K
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible
ansible-playbook -i hosts playbook.yml -K
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
ansible-playbook -i hosts playbook.yml -K
sudo apt install -y ansible
sudo apt update
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible
ansible-playbook -i inventory playbook.yml -K
nano ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
ansible-playbook -i inventory playbook.yml -K
nano ~/UTN-FRA_SO_Examenes/202406/ansible/playbook.yml
ansible-playbook -i inventory playbook.yml -K
cd ~/UTN-FRA_SO_Examenes/202406/
git log -1 --format="%H" > ~/RTA_Examen_20260619/Punto_E.txt
cat ~/RTA_Examen_20260619/Punto_E.txt
cd ~/UTN-FRA_SO_Examenes/202406/
git add .
mv ~/RTA_Examen_20260619 ~/RTA_Examen_$(date +%Y%m%d)
history -a
cp -r ~/RTA_Examen_$(date +%Y%m%d) .
