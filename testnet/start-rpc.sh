#!/bin/sh
docker run -dit  --restart=unless-stopped \
	--name testnet-rpc \
	-v $PWD:/srv -w /srv \
	ethereum/client-go:stable \
	--networkid 1708 \
	--gcmode archive --syncmode full \
	--datadir /srv/node \
	--cache 4096 \
	--ws --ws.api eth,net,web3,txpool,debug \
	--ws.addr 127.0.0.1 --ws.origins '*' \
	--http --http.api eth,net,web3,txpool,debug \
	--http.addr 127.0.0.1 --http.vhosts '*' --http.corsdomain '*' \
	--nodiscover
