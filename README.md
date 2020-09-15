# .files
Personal dotfiles for various applications, configurations and whatever.

## Installation

Clone the repository, copy the necessary files to your `$HOME` folder and run the `source` command.
```bash
git clone https://github.com/benct/dotfiles.git && cd dotfiles
cp .* ~/
source ~/.bash_profile
```

Set up macos defaults:
```bash
source ~/.macos
```

Set `chmod` on scripts:
```bash
sudo chmod 755 ~/bin/*
```

## Mac Setup

### Install
```bash
# Bash
brew install bash
chsh -s /bin/bash

# Java
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk14

# Docker
brew cask install docker
docker login -u $ARTIFACTORY_USER -p $ARTIFACTORY_PWD containers.schibsted.io

# NVM
brew install nvm
mkdir ~/.nvm
nvm install <version>

# Other
brew install wget
brew install direnv
brew install sshuttle
```

### Update
```bash
# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew update
brew upgrade

# Update npm & packages
npm install npm -g
npm update -g

# Update Ruby & gems
sudo gem update -system
sudo gem update
```

## Useful(?) stuff

### General
```bash
find .
find ~/ |grep something

ps aux |grep something

kill -9 <process>
kill $(ps aux | grep something | awk '{print $2}')
```

### Git
```bash
git log
git show <hash>
git diff HEAD~1
git clean -dfx

git config --list --local
git config user.email "ben@tomlin.no"
git config user.name "benct"

git pull
git checkout -b "<branch>"
git push origin <branch>
```
