sudo apt update
sudo apt install -y libtool libssl-dev git autoconf automake build-essential python-dev

git clone https://github.com/facebook/watchman.git &&
cd watchman &&
git checkout v4.9.0

sleep 2

chmod +x autogen.sh &&
./autogen.sh &&
./configure &&
make &&
sudo make install

# Checking installation
watchman --version
