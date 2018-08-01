#!/bin/bash
git remote add heroku https://git.heroku.com/egasosa-site.git
wget https://cli-assets.heroku.com/branches/stable/heroku-linux-amd64.tar.gz -q
sudo mkdir -p /usr/local/lib /usr/local/bin
sudo tar -xzf heroku-linux-amd64.tar.gz -C /usr/local/lib
sudo ln -s /usr/local/lib/heroku/bin/heroku /usr/local/bin/heroku

cat > ~/.netrc << EOF
machine api.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_API_KEY
machine git.heroku.com
  login $HEROKU_LOGIN
  password $HEROKU_API_KEY
EOF
