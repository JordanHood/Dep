all:
	-apt update -y
	-apt install curl -y
	-curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
	-export NVM_DIR=$$HOME/.nvm
	-[ -s $$NVM_DIR/nvm.sh ] && \. "$$NVM_DIR/nvm.sh
	-[ -s "$$NVM_DIR/bash_completion" ] && \. "$$NVM_DIR/bash_completion"
	-nvm install 8 
	-npm install