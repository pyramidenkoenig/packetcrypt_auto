sudo apt update
sudo apt install gcc git htop bmon build-essential screen wget curl -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
git clone https://github.com/cjdelisle/packetcrypt_rs --branch develop
cd packetcrypt_rs
~/.cargo/bin/cargo build --release
cd ~/packetcrypt_auto/
chmod +x ~/packetcrypt_auto/start.sh
sh ~/packetcrypt_auto/start.sh
echo okay
