#!/usr/bin/env bash
# by default vagrant will execute the shell script as a privileged user (sudo)
# but we've turned this off in the Vagrantfile

# try to keep one install command per line for clarity

sudo apt-get update

# Install build-essential, git, and ruby
# -y flag automatically answers yes to all prompts
sudo apt-get -y install build-essential
sudo apt-get -y install git


# -----
# Ruby
# -----
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc

# run those two lines to get immediate access to rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


#type rbenv # check that rbenv installed properly

# Install ruby-build to facilitate installing Ruby versions
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# Install ruby
rbenv install 2.1.2

#set Ruby version for global use before trying to install gems
rbenv global 2.1.2

# ------
# Non-bundled Gems
# ------
sudo gem install bundler --no-ri --no-rdoc

# ------
# Node
# ------

git clone https://github.com/OiNutter/nodenv.git ~/.nodenv
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(nodenv init -)"' >> ~/.bashrc

# run those two lines get immediate access to nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

#type nodenv # check that nodenv installed properly

# Install node-build to facilitate installing new Node versions
git clone git://github.com/OiNutter/node-build.git ~/.nodenv/plugins/node-build

# Install nodejs
nodenv install 0.10.26

# set node version for global use before trying to use npm
nodenv global 0.10.26

# ------
# Node modules
# ------

# make sure npm is up to date
sudo npm update -g npm

sudo npm install -g grunt-cli
sudo npm install -g bower

