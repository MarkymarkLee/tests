sudo apt update
sudo apt install git build-essential libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build

git clone https://gitlab.com/qemu-project/qemu.git
cd qemu/
git checkout tags/v6.1.0

./configure --target-list=x86_64-softmmu --disable-werror
make -j4

sudo make install
cd ..

wget -O guest.img https://cloud.debian.org/images/cloud/bullseye/latest/debian-11-nocloudamd64.qcow2
qemu-img resize guest.img 10g