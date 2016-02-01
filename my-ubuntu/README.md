## ansible playbook


### devops
virtualbox
'''
vagrant init ubuntu/trusty64; vagrant up --provider virtualbox
'''

docker
'''
ansible-galaxy install angstwad.docker_ubuntu
'''

### aws
jungledisk
s3cmd

### java dev
sbt
java open sdk
oracle java 7 runtime
oracle java 7 webstart
oracle java 8 runtime
oracle java 8 webstart
dmd (d compiler)

maven 3.1
'''
cd ~/Downloads
wget http://archive.apache.org/dist/maven/maven-3/3.1.1/binaries/apache-maven-3.1.1-bin.tar.gz

sudo mkdir -p /usr/local/apache-maven
sudo mv apache-maven-3.1.1-bin.tar.gz /usr/local/apache-maven
cd /usr/local/apache-maven
sudo tar -xzvf apache-maven-3.1.1-bin.tar.gz
'''

append to .profile
'''
export M2_HOME=/usr/local/apache-maven/apache-maven-3.1.1
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH
'''


### analysis
anaconda
R
R commander
Octave

### develop tools
intellij
sublime
git
meld
p4
KCachegrind

### intellij plugins
maven helper
scala
python
markdown support

### 
firefox
skype
libre office
FocusWriter

### firefox plugins
FileZilla

### media
rawtherapee
krita
vlc media player
ripperX
dvdrip

