sudo apt update
sudo apt install gcc git htop bmon build-essential screen -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
git clone https://github.com/cjdelisle/packetcrypt_rs --branch develop
cd packetcrypt_rs
~/.cargo/bin/cargo build --release
chmod +x ~/packetcrypt_auto/start.sh
./start.sh
