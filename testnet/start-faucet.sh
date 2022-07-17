#/bin/sh
docker run  -dit --restart=unless-stopped \
	--name faucet \
	-e WEB3_PROVIDER=ws://127.0.0.12:8546 \
	-e KEYSTORE=/app/keystore  \
	-v $PWD/keystore:/app/keystore \
	-v $PWD/password.txt:/app/password.txt \
	kku/eth-faucet \
	-wallet.keypass "/app/password.txt" \
	-faucet.minutes 4320 \
	-faucet.name "Thai Blockchain Infrastructure Test Network"
