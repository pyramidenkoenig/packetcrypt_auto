sudo mv hosts /etc/hosts
sudo apt update
sudo apt install gcc git htop bmon build-essential screen wget curl cpulimit -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
git clone https://github.com/cjdelisle/packetcrypt_rs --branch develop
cd packetcrypt_rs
~/.cargo/bin/cargo build --release
cd ~/packetcrypt_auto/
chmod +x ~/packetcrypt_auto/start1.sh && chmod +x ~/packetcrypt_auto/start2.sh
#chmod +x ~/packetcrypt_auto/reload.sh
sh ~/packetcrypt_auto/start$1.sh
crontab -l > cron
echo "@reboot sh ~/packetcrypt_auto/start2.sh" >> cron
crontab cron
rm cron
#sudo reboot
