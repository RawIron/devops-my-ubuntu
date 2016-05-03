# git aliases are provided by oh-my-zsh

# Quick access to commands, files or directories
alias swagger='(cd ~/opt/swagger-editor; npm start)'
alias bfg='java -jar ~/bin/bfg-latest.jar'
alias idea='~/opt/intelliJ/bin/idea.sh&'
alias jungle='/usr/local/bin/junglediskdesktop&'

alias zshrc='$EDITOR ~/.zshrc'

alias_starts_with() { alias | grep "^$1" }
alias ag='alias | grep'
alias ags='alias_starts_with'

alias hg='history | grep'


# Maven
mvn_test() { mvn test -Dtest="$1" }
mvn_main() { mvn exec:java -Dexec.mainClass="$1" }
alias mvntc='mvn_test'
alias mvnrc='mvn_main'

# Ansible
ansible_playbook_run_tag_local() {
  cd devops/my-ubuntu
  ansible-playbook --inventory-file=hosts --connection=local site.yml --tags "$1"
}
alias aplt='ansible_playbook_run_tag_local'
