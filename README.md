# New install

## iCloud
During a fresh install of OS X, sign into iCloud with Apple ID.

## Mac App Store
* 1Password
* Acorn
* Dash
* iMovie
* iPhoto
* iWork
* Reeder
* Soulver
* Twitter
* The Unarchiver
* Xcode

## System Preferences
* Change background image.
* Change resolution.
* Change trackpad or mouse preferences.
* Prevent computer from sleeping automatically when the display is off.
* Don't ask too often for App Store password.

- [ ] TODO: use defaults.

## Xcode
Open and install components or simply:
```
xcode-select --install
```

## Homebrew
Install Homebrew
```
cd && mkdir homebrew
SetFile -a V homebrew
curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C homebrew
```
Install brews
```
brew install colordiff
brew install dockutil
brew install imagemagick --with-webp
brew install libimobiledevice
brew install terminal-notifier
brew install trash
brew install watch
brew install wget --with-iri
brew install zsh-completions
brew install z
```

- [ ] TODO: tap homebrew-bundle and use a Brewfile.

## GitHub
Generate SSH keys with [GitHub instructions](https://help.github.com/articles/generating-ssh-keys/).
```
ssh-keygen -t rsa -b 4096 -C "arcank@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub
```
Add the public key to https://github.com/settings/ssh.

Add the private key to `ssh-agent`.
```
ssh-add ~/.ssh/id_rsa
```
Test the connection.
```
ssh -T git@github.com
```

- [ ] Optional: set up [credential caching](https://help.github.com/articles/caching-your-github-password-in-git/).

## dotfiles
```
mkdir ~/Developer
cd ~/Developer
git clone git@github.com:Arcank/dotfiles.git
cd
ln -s Developer/dotfiles/gitattributes .gitattributes
ln -s Developer/dotfiles/gitconfig .gitconfig
ln -s Developer/dotfiles/gitignore .gitignore
ln -s Developer/dotfiles/lldbinit .lldbinit
ln -s Developer/dotfiles/vimrc .vimrc
ln -s Developer/dotfiles/zshenv .zshenv
ln -s Developer/dotfiles/zshrc .zshrc
```

## zsh
```
chsh -s /bin/zsh
```

## Caskroom
```
cd && mkdir -p caskroom/bin
SetFile -a V caskroom
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install alfred
brew cask install daisydisk
brew cask install day-o
brew cask install divvy
brew cask install dropbox
brew cask install flux
brew cask install free-ruler
brew cask install google-chrome
brew cask install iterm2
brew cask install kaleidoscope
brew cask install mactracker
brew cask install slack
brew cask install sublime-text3
brew cask install transmission
brew cask install typinator59
```

## QuickLook plugins
```
brew cask install provisioning
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlprettypatch
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install webpquicklook
killall Finder
```

## OS X preferences
```
source ~/Developer/dotfiles/osx
```

## Dropbox
* Sign-in.
* Selective sync.

- [ ] TODO: is there a way to version the preferences?

## Google Chrome
* Create a Perso profile.
* Sign-in with personal email.
* Log into Pocket.
* Go to https://inbox.google.com and set it as Protocol Handler for mailto:.
* Enable Offline mode for Drive items:
`Chrome > Apps > Docs > Settings > Turn on offline sync`.

- [ ] TODO: any way to do it programatically?

## 1Password
* Use vault in `Dropbox/Utilitaires/1Password/1Password.opvault`.

## Alfred
* Install license (PowerPack) stored in 1Password.

## Sublime Text
* Install [Package Control](https://packagecontrol.io/installation) ([known issue](https://github.com/wbond/package_control/issues/1002)).
* Install PackageSync.
* PackageSync: Sync Online - Define Online Sync Folder
`$HOME/Dropbox/Utilitaires/Sublime Text Package Syncing`
* Restart Sublime Text.

## Dash
* Restore purchases.

## DaisyDisk
* Install license stored in 1Password.

## Divvy
* Install license stored in 1Password.

## Kaleidoscope
* Install license stored in 1Password.

- [ ] TODO: Kaleidoscope stores license in ~/Library/Kaleidoscope.

## Typinator
* Preferences in `Dropbox/Utilitaires/Typinator/Sets`.

- [ ] TODO: find the defaults to change. Is it in `com.macility.typinator2`?

## Delivery Status Dashboard widget
* Download from https://junecloud.com/software/dashboard/delivery-status.html.
* Sign in.
* Allow local notifications.

# TODO

- [ ] bootstrap.sh
- [ ] http://star.mit.edu/cluster/docs/0.92rc2/manual/shell_completion.html
- [ ] MoSh
- [ ] https://github.com/mathiasbynens/dotfiles
- [ ] https://github.com/neovim/neovim
- [ ] https://github.com/keith/dotfiles/blob/master/osx/Brewfile
- [ ] vimrc
- [ ] vundle
- [ ] https://github.com/Homebrew/homebrew-bundle
- [ ] https://mattstauffer.co/blog/setting-up-a-new-os-x-development-machine-part-1-core-files-and-custom-shell
