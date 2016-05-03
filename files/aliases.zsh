# git aliases are provided by oh-my-zsh

# Quick access to commands, files or directories
alias swagger='(cd ~/opt/swagger-editor; npm start)'
alias bfg='java -jar ~/bin/bfg-latest.jar'
alias idea='~/opt/intelliJ/bin/idea.sh&'
alias jungle='/usr/local/bin/junglediskdesktop&'

alias zshrc='$EDITOR ~/.zshrc'

alias ag='alias | grep'
alias_starts_with() { alias | grep "^$1" }
alias ags='alias_starts_with'

alias hg='history | grep'

alias tree='tree -C'
alias tedu='tree -C --du -h'


# Maven
mvn_test() { mvn test -Dtest="$1" }
alias mvntc='mvn_test'
mvn_main() { mvn exec:java -Dexec.mainClass="$1" }
alias mvnrc='mvn_main'


# Ansible
ansible_playbook_run_tag_local() {
  cd devops/my-ubuntu
  ansible-playbook --inventory-file=hosts --connection=local site.yml --tags "$1"
}
alias aplt='ansible_playbook_run_tag_local'


# Docker
alias dop='docker ps -a'
alias dora='docker rm $(docker ps -a -q)'
alias doi='docker images'
alias doria='docker rmi $(docker images -q)'
docker_run_shell() { docker run -it "$1" sh }
alias dors='docker_run_shell'

