## ansible playbook


### devops
docker
'''
ansible-galaxy install angstwad.docker_ubuntu
'''

### aws
jungledisk
s3cmd
'''
copy access and secret key to config files
.s3cfg
'''

### java dev
sbt
'''
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt-get update
sudo apt-get install sbt
'''
scala
java open sdk
oracle java 7 runtime
oracle java 7 webstart
oracle java 8 runtime
oracle java 8 webstart

dmd (d compiler)

if ubuntu 14.04:
	maven 3.1, append to .profile
'''
export M2_HOME=/usr/local/apache-maven-3.1
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH
'''


### analysis
anaconda
R commander
'''
open the R interpreter (from the command line: R) and run install.package("Rcmdr") in the interpreter. Once this finishes, then run library(Rcmdr). Allow it to install missing/updated dependencies.
'''

### develop tools
intellij idea
sublime
p4


#### github repos
create workspace(s) in HOME
git clone projects into the workspace(s)

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
7zip
bzip2
Midnight Commander
Record My Desktop


### firefox plugins
FileZilla

### media
rawtherapee
krita
vlc media player
ripperX
dvdrip


### eye candy
unfortunately haven't found out how to configure a "glass look"
  all backgrounds are transparent, blurred
  drop-down menu are transparent, blurred
  ...

Unity Tweak Tool
Compiz config manager (CCSM)
'''
sudo apt-get install unity-tweak-tool
sudo apt-get install ccsm
'''

Compiz config settings manager, Unity plugin
	set opacity for launcher
	set opacity for panel (or use Unity Tweak Tool)


download themes
'''
gnome-look.org
'''

install theme with Unity Tweak Tool
  current theme is delorean-dark-theme-3.9

change desktop background
* ghost-in-the-shell

terminator
	transparency of background
