#!/bin/bash
apt-get -y update

dpkg -s npm &>/dev/null || {
    #apt-get -y install nodejs npm
    
    curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
    node -v
    apt-get install nodejs
    node -v

    npm config set strict-ssl false
    ln -s /usr/bin/nodejs /usr/bin/node 
    
    apt-get -y install npm
}
#node -v: v0.10.25   npm -v: 1.3.10

command -v hubot &>/dev/null || {
  npm install -g hubot coffeescript
}