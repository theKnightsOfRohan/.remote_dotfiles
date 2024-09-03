#!/usr/bin/bash

ssh-keygen -t rsa -b 4096 -C $(git config user.email) -N "" -f ~/.ssh/github
echo -e "\n"

touch ~/.ssh/config
cat <<EOL >~/.ssh/config
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github
    IdentitiesOnly Yes"
EOL

chmod 600 ~/.ssh/config
chmod 700 ~/.ssh/config

echo "Below is the public SSH key:"
cat ~/.ssh/github.pub
