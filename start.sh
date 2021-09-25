screen -XS pkt quit
screen -dmS pkt cpulimit -l 30 ./packetcrypt_rs/target/release/packetcrypt ann -p pkt1qh7afcp559u9ktem38e6y6mfvlpyew7ekch9c4d http://pool.srizbi.com/ http://pool.pkt.world/ http://pool.pktpool.io/ http://alt.pkt.world/alt
cpulimit -l 80 -b -e packetcrypt
