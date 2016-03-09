## My Ubuntu Playbooks
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
automate everything and so everything is reproducible. it can be run again and again. makes testing, load testing, building and deploying easy. also great for scaling.
* ansible
* docker
```
ansible-galaxy install angstwad.docker_ubuntu
```

### aws
tools to access, manage and deploy. a lot of times I access S3.
* jungledisk
* s3cmd
```
copy access and secret key to config files
.s3cfg
```
* awscli

### jvm development
* scala
* java
```
java open sdk
oracle java 7 runtime
oracle java 7 webstart
oracle java 8 runtime
oracle java 8 webstart
```
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
great python packages to help writing great code. Use TDD, dependency injection, database abstraction, database migration.
* virtualenv
* nose, pyvows
* inject
* sqlalchemy, agnostic


### system programming
programming languages for high performance and system level access. i do like compilers and very fast code.
* dmd (d compiler)
* C, C++


### data analysis
wrangle, plot, predict, test hypothesis, estimate.

#### py-data
* anaconda
* numpy, scipy, sympy, Jupyter, Seaborn, scikit-learn

#### R
* R commander
```
open the R interpreter (from the command line: R) and run install.package("Rcmdr") in the interpreter. Once this finishes, then run library(Rcmdr). Allow it to install missing/updated dependencies.
```

### development tools
write code with fully fledged IDE or lightweight editor. plugins can be used to extend the functionality.
* intellij idea
* vim
* sublime
* git
* meld, p4

#### intellij plugins
* maven helper
* scala
* python
* markdown support

#### sublime packages (plugins)
* Package Control
* SublimeLinter
* sublimelinter-pylint
* sublimelinter-json
* BracketHighlighter
* Sublime CodeIntel
* SublimeREPL

### system tools
look under the hood.

#### performance
show and measure what is happening in the Linux kernel.

* SystemTap, perf_events, dtrace4linux, ktap, lttng
* strace, ftrace, ltrace, ss, sysdig, tiptop
* mpstat, vmstat, netstat, iostat

SystemTap install:
```bash
apt-get install linux-tools-common linux-tools-generic linux-tools-$(uname -r)
```

### user account

#### github repos
* create workspace(s) in HOME
* git clone projects into the workspace(s)

### office tools
communicate. create and manage documents, files.
* firefox
* skype
* libre office
* FocusWriter
* Record My Desktop
* 7zip, bzip2
* Midnight Commander

#### firefox plugins
* FileZilla

### media
view and process photos, e-books, audio and video.
* rawtherapee
* krita
* vlc media player
* ripperX
* dvdrip
* OpenShot
* Calibre

### eye candy
give Linux the look-and-feel I like.
unfortunately haven`t figured out how to configure a "glass look"
  * all backgrounds are transparent, blurred
  * drop-down menu are transparent, blurred
  * ...

tools for UI tweaks. did a few tweaks.
* Unity Tweak Tool
* Compiz config manager (CCSM)
```
sudo apt-get install unity-tweak-tool
sudo apt-get install ccsm
```

Compiz config settings manager, Unity plugin
* set opacity for launcher
* set opacity for panel (or use Unity Tweak Tool)


browse and download a theme
```
gnome-look.org
```

install theme with Unity Tweak Tool
* current theme is `delorean-dark-theme-3.9`

to fix the 
Gtk-WARNING **: Unable to locate theme engine in module_path: "pixmap"
```
sudo apt-get install gtk2-engines-pixbuf
```

change desktop background
* ghost-in-the-shell

terminator
* transparency of background
