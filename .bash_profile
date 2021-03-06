# History settings
export HISTCONTROL="erasedups:ignoreboth"
export HISTFILESIZE=500000
export HISTSIZE=100000
export HISTIGNORE="&:[ ]*:exit"
export FIGNORE="CVS:.svn:~:.git"
export PROMPT_COMMAND="history -a"

# Append to the history file, don't overwrite it
shopt -s histappend;
shopt -s cmdhist;
stty stop ""

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Coloring
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Favourite editor
export EDITOR=nano

# Default language and encoding
export LANG=en_GB.UTF-8

# Add /usr/local/sbin to PATH
export PATH=/usr/local/sbin:$PATH

# Add ~/bin scripts to PATH
export PATH=$HOME/bin:$PATH

# Java home / aliases
export JAVA_HOME=$(/usr/libexec/java_home -v 14)
alias java8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)"
alias java9="export JAVA_HOME=$(/usr/libexec/java_home -v 9)"
alias java10="export JAVA_HOME=$(/usr/libexec/java_home -v 10)"
alias java11="export JAVA_HOME=$(/usr/libexec/java_home -v 11)"
alias java12="export JAVA_HOME=$(/usr/libexec/java_home -v 12)"
alias java13="export JAVA_HOME=$(/usr/libexec/java_home -v 13)"
alias java14="export JAVA_HOME=$(/usr/libexec/java_home -v 14)"

# Aliases
alias l="ls -la"
alias ld="ls -ld */"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias trav="cd $HOME/code/travel-app/"
alias gr="$HOME/code/travel-app/tools/gr"

alias kdev="kubectl --context="finn-fiaas-dev-gke01""
alias kprod="kubectl --context="finn-fiaas-prod-gke01""

# Recursively remove .DS_Store files
alias cleanupds="find . -type f -name '*.DS_Store' -ls -delete"

# NVM dir
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# Update PATH for the Google Cloud SDK.
if [ -f '$HOME/google-cloud-sdk/path.bash.inc' ]; then . '$HOME/google-cloud-sdk/path.bash.inc'; fi

# Enable shell command completion for gcloud
if [ -f '$HOME/google-cloud-sdk/completion.bash.inc' ]; then . '$HOME/google-cloud-sdk/completion.bash.inc'; fi
eval "$(kubectl completion bash)"

# Enable shell command completion for brew
if [ -f '$(brew --prefix)/etc/bash_completion' ]; then . '$(brew --prefix)/etc/bash_completion'; fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Source other bash files
[[ -r ~/.bashrc ]] && source ~/.bashrc
[[ -r ~/.bash_prompt ]] && source ~/.bash_prompt

# Artifactory
export ARTIFACTORY_USER=<e-mail>
export ARTIFACTORY_PWD=<api-key>
export ARTIFACTORY_NPM_SECRET="$(echo -n $ARTIFACTORY_USER:$ARTIFACTORY_PWD | base64)"

# Setup direvn hook
eval "$(direnv hook bash)"
