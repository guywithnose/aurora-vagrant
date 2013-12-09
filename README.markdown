###To get started
* Download and install Virtual box 4.3 from here: 'https://www.virtualbox.org/wiki/Downloads' (On ubuntu you might need to run 'sudo apt-get install libsdl1.2debian' first)
* Download and install Vagrant 1.3.5 from here: 'http://downloads.vagrantup.com/tags/v1.3.5'
* Make a box directory in this folder
* Download saucy64.box from https://drive.google.com/file/d/0Bxw99iMCPl_tcUx4SkhySFQ4MnM/edit?usp=sharing to the box directory
* Run these commands

```sh
vagrant box add saucy64 box/saucy64.box
git clone git@github.com:dominionenterprises/aurora.git
git clone git@github.com:dominionenterprises/tol-cms.git cms -b aurora
vagrant up
```
