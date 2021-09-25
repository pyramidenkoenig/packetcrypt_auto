screen -XS pkt quit
screen -dmS pkt ~/packetcrypt_auto/packetcrypt_rs/target/release/packetcrypt ann -p pkt1q2z2lzt9wl0tl2svu7nr7rhztykj0yyrvss93tw http://pool.srizbi.com/ http://pool.pkt.world/ http://pool.pktpool.io/ http://alt.pkt.world/alt
cpulimit -l 80 -b -e packetcrypt
