#!/bin/sh
docker run -dit --restart=unless-stopped \
	--name testnet-x \
	-v $PWD:/srv -w /srv \
	-p 30303:30303 \
	ethereum/client-go:stable \
	--networkid 1708 \
	--port 30303 \
	--datadir /srv/node \
	--unlock 0123456789abcdef0123456789abcdef01234567 \
	--password password.txt \
	--gcmode archive \
	--syncmode full \
	--mine \
	--nousb \
	--nodiscover
