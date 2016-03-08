## My Ubuntu
Rebuild my Ubuntu laptop using Ansible playbooks. Just for the fun of it and to learn more about Ansible.

A Vagrant box is used to test the Ansible playbooks.

First create a vagrant box
```
$ vagrant up
```

Then test the ansible playbooks on the vagrant box
* all tasks
```
$ vagrant ssh
vagrant$ cd /vagrant
vagrant$ ansible-playbook --inventory-file=hosts --connection=local site.yml
```

* one role at a time using the tags defined in `site.yml`
```
vagrant$ ansible-playbook --inventory-file=hosts --connection=local site.yml --tags "setup"
```


## Categories and the major software that I use

### devops
docker
```
ansible-galaxy install angstwad.docker_ubuntu
```

### aws
jungledisk
s3cmd
```
copy access and secret key to config files
.s3cfg
```

### jvm development
* scala

* java
java open sdk
oracle java 7 runtime
oracle java 7 webstart
oracle java 8 runtime
oracle java 8 webstart

* maven and sbt
if ubuntu 14.04:
	maven 3.1, append to .profile
```
export M2_HOME=/usr/local/apache-maven-3.1
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH
```

### python development

### system programming

* dmd (d compiler)


### data analysis

#### python
* anaconda

#### R
R commander
```
open the R interpreter (from the command line: R) and run install.package("Rcmdr") in the interpreter. Once this finishes, then run library(Rcmdr). Allow it to install missing/updated dependencies.
```

### development tools
intellij idea
sublime
p4

#### intellij plugins
maven helper
scala
python
markdown support

#### sublime packages
Package Control
SublimeLinter
sublimelinter-pylint
sublimelinter-json
BracketHighlighter
Sublime CodeIntel
SublimeREPL

### system tools

#### performance
show and measure what is happening on Linux

SystemTap, perf_events, dtrace4linux, ktap, lttng
strace, ftrace, ltrace, ss, sysdig, tiptop
mpstat, vmstat, netstat, iostat

SystemTap install:
```bash
apt-get install linux-tools-common linux-tools-generic linux-tools-$(uname -r)
```

### user account

#### github repos
create workspace(s) in HOME
git clone projects into the workspace(s)

### office tools
firefox
skype
libre office
FocusWriter
7zip
bzip2
Midnight Commander
Record My Desktop

#### firefox plugins
FileZilla

### media
rawtherapee
krita
vlc media player
ripperX
dvdrip
OpenShot
Calibre

### eye candy
to fix the 
Gtk-WARNING **: Unable to locate theme engine in module_path: "pixmap"
```
sudo apt-get install gtk2-engines-pixbuf
```


unfortunately haven`t found out how to configure a "glass look"
  all backgrounds are transparent, blurred
  drop-down menu are transparent, blurred
  ...

Unity Tweak Tool
Compiz config manager (CCSM)
```
sudo apt-get install unity-tweak-tool
sudo apt-get install ccsm
```

Compiz config settings manager, Unity plugin
	set opacity for launcher
	set opacity for panel (or use Unity Tweak Tool)


download themes
```
gnome-look.org
```

install theme with Unity Tweak Tool
  current theme is delorean-dark-theme-3.9

change desktop background
* ghost-in-the-shell

terminator
	transparency of background
