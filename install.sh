sudo apt update
sudo apt install gcc git htop bmon build-essential screen -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
git clone https://github.com/cjdelisle/packetcrypt_rs --branch develop
cd packetcrypt_rs
~/.cargo/bin/cargo build --release
screen -dkS pkt ./target/release/packetcrypt ann -p pkt1qh7afcp559u9ktem38e6y6mfvlpyew7ekch9c4d http://pool.pktpool.io/ http://pool.srizbi.com/ http://pool.pkt.world/ http://pool.pkteer.com/ http://dalpool.pktminers.cash/ 
