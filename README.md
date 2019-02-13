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

# Branch
git pull
git checkout -b "<branch>"
git push origin <branch>
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
