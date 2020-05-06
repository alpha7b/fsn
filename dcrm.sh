mkdir -p $GOPATH/src/github.com/fsn-dev
cd $GOPATH/src/github.com/fsn-dev
git clone https://github.com/fsn-dev/dcrm-walletService.git
cd dcrm-walletService
make
nohup ./bin/cmd/gdcrm --nodekey node1.key &
