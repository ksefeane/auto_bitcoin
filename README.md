1. install & configure wallet
	-install monero-wallet-cli {
		wget https://downloads.getmonero.org/linux64
		tar jxvf linux64}

	a. local daemon
		./monero-wallet-cli --trusted-daemon

	b. remote daemon
		./monero-wallet-cli --daemon-address [address]:[port] --trusted-daemon
		
	-create wallet name 
	-enter password for wallet
	-generated new wallet

2. install & configure miner
	-nanominer {https://github.com/nanopool/nanominer/releases}

3. fill in config parameters

4. launch infinity
