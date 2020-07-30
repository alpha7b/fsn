# setup dcrm node

docker run -d -p 4449:4449 rond/dcrm-wallet-service:5.1.0



# setup swapbot

bash -c "$(curl -fsSL https://raw.githubusercontent.com/alpha7b/fsn/master/setup_swapbot.sh)"
