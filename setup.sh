#!/bin/bash

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Apps
brew install mas
brew install browserosaurus
brew install dsh
brew install saml2aws
brew install asdf
brew install awscli
brew install php@8.1
brew install mysql-client

brew install --cask brave-browser
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask microsoft-teams
brew install --cask onedrive 
brew install --cask zoomus
brew install --cask tableplus
brew install --cask phpstorm
brew install --cask 1password
brew install --cask ticktick
brew install --cask miro

brew install --cask spotify
brew install --cask whatsapp

# Magnet
mas install 441258766
# Paste
mas install 967805235
# Spark
mas install 1176895641
# Microsoft To
mas install 1274495053

# Runtimes
echo "ruby 2.7.1
python 3.8.3 2.7.1
terraform 1.1.2
golang 1.18.1
terragrunt 0.38.0
nodejs 16.13.1
python 3.10.5
" > ~/.tool-versions

asdf plugin add golang
asdf install golang

asdf plugin add terraform
asdf install terraform

asdf plugin add terragrunt
asdf install terragrunt

asdf plugin add nodejs
asdf install nodejs

asdf plugin add python
asdf install python

# Repos
mkdir Development
git clone git@git.prescreen.io:dev/ps.git ~/Development/ps

mkdir Development/devops
git clone git@git.prescreen.io:dev-ops/ps-aws-terraform.git ~/Development/devops/ps-aws-terraform
git clone git@git.prescreen.io:dev-ops/puppet/puppet-modules.git ~/Development/devops/puppet-modules
git clone git@git.prescreen.io:dev-ops/container-buildah.git ~/Development/devops/container-buildah

git clone git@git.prescreen.io:dev/psc.git ~/Development/psc
ln -s ~/Development/psc/bin/psc /usr/local/bin/psc
