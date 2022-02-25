#/bin/bash

set -e

filename=postman.tar.gz
wget -O $filename https://dl.pstmn.io/download/latest/linux64

tar -xzvf $filename

sudo mv Postman /opt

sudo ln -s /opt/Postman/Postman /user/local/bin/postman

echo "Successfully installed Postman"
