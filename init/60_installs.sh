# install arcanist
mkdir -p ~/compiles/
cd ~/compiles && git clone https://github.com/phacility/libphutil.git
cd ~/compiles && git clone https://github.com/phacility/arcanist.git

# install terraform
mkdir -p ~/compiles/terraform
cd ~/compiles/terraform && curl https://releases.hashicorp.com/terraform/0.6.12/terraform_0.6.12_linux_amd64.zip -o ./terraform.zip && unzip ./terraform.zip
