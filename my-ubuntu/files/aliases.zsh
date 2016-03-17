# git aliases are provided by oh-my-zsh

# Quick access to commands, files or directories
alias swagger='(cd ~/opt/swagger-editor; npm start)'
alias bfg='java -jar ~/bin/bfg-latest.jar'
alias idea='~/opt/intelliJ/bin/idea.sh&'
alias jungle='/usr/local/bin/junglediskdesktop&'

alias zshrc='$EDITOR ~/.zshrc'

alias al='alias | grep'

# Maven
mvn_test() { mvn test -Dtest=$1 }
alias mvntc='mvn_test'
