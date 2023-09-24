# Ubuntu


apt update -y
apt upgrade -y

apt install -y wget libssl-dev
wget https://github.com/Kitware/CMake/releases/download/v3.18.0/cmake-3.18.0.tar.gz
tar -zxvf cmake-3.18.0.tar.gz
cd cmake-3.18.0/
./bootstrap
make
make install -y

snap install cmake --classic

apt install git -y

apt install libsdl2-dev -y

apt install libcurl4 libcurl4-openssl-dev -y

apt install x11-xserver-utils -y

apt install xinit -y

cd ..




git clone https://github.com/paxo-phone/paxos_8.git
chmod -R 777 paxos_8/

cd ./paxos_8

cmake . && cmake --build .

make

chmod -R 777 ./CMakeFiles

sudo chmod +x PaxOS8

ssh -X add@10.0.2.15

sudo su

sudo apt-get install xorg -y


startx

#export XDG_RUNTIME_DIR=/run/user/$(id -u)

#export DISPLAY=:0
export DISPLAY=10.0.2.2:0.0
xhost +
# Utilise X11 pour afficher depui un terminal virtuel
./PaxOS8 -X




