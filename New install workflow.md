# New install
Author: Louis Romero <lpromero@google.com>

After a fresh install of OS X:

## Install Mac App Store apps
Xcode
1Password
Acorn
Dash
iMovie
iPhoto
iWork
Reeder
Soulver
Twitter
The Unarchiver

## Xcode
Open and install components or simply `xcode-select --install`.
- Gutter at 80 chars.
- Show line numbers.
- Show code folding ribbon.
- Indentation 2 spaces.
- Including whitespace only lines.
TODO: defaults?

## Homebrew
cd && mkdir homebrew && curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C homebrew
SetFile -a V homebrew
brew install colordiff
brew install imagemagick --with-webp
brew install libimobiledevice
brew install terminal-notifier
brew install trash
brew install watch
brew install wget --with-iri
brew install zsh-completions
brew install z

## GitHub
Generate SSH keys (https://help.github.com/articles/generating-ssh-keys/).
ssh-keygen -t rsa -b 4096 -C "arcank@gmail.com"
pbcopy < ~/.ssh/id_rsa.pub
- Add the public key to https://github.com/settings/ssh.
- Add the private key to `ssh-agent`.
ssh-add ~/.ssh/id_rsa
- Test the connection.
ssh -T git@github.com
- Optional: set up credential caching.
https://help.github.com/articles/caching-your-github-password-in-git/

## Install dotfiles
mkdir ~/Developer
cd ~/Developer
git clone git@github.com:Arcank/dotfiles.git
ln -s ~/Developer/dotfiles/gitattributes ~/.gitattributes
ln -s ~/Developer/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Developer/dotfiles/gitignore ~/.gitignore
ln -s ~/Developer/dotfiles/lldbinit ~/.lldbinit
ln -s ~/Developer/dotfiles/ssh ~/.ssh
ln -s ~/Developer/dotfiles/zshenv ~/.zshenv
ln -s ~/Developer/dotfiles/zshrc ~/.zshrc

## zsh
Go to System Preferences > Users & Groups > Unlock > right click on user >
  Login shell > Change to `/bin/zsh`.
TODO: is there a way to do it cleanly in the Terminal? chsh?

## Caskroom
cd && mkdir -p caskroom/bin
SetFile -a V caskroom
brew install caskroom/cask/brew-cask
- Tap the `caskroom/versions` repository.
brew tap caskroom/versions

## Dropbox
brew cask install dropbox
- Sign-in.
- Selective sync.
TODO: replace with defaults or version the preferences file.

## 1Password
Use vault in `Dropbox/Utilitaires/1Password/1Password.opvault`.
TODO: replace with defaults?

## Alfred
brew cask install alfred
- Have Alfred be the `cmd`+`space` handler.
- Activate the PowerPack.
- Set up the prefs from `Dropbox/Utilitaires/Alfred`.
TODO: replace with defaults or version the preferences file?

## iTerm2
brew cask install iterm2
- Preferences > General > Load preferences from a custom folder or URL:
`Dropbox/Utilitaires/iTerm2`
- Relaunch iTerm2.
- Make sure the shell is `/bin/zsh`.
$ echo $SHELL

## Sublime Text
brew cask install sublime-text3
- Install Package Control
https://packagecontrol.io/installation
Known issue: https://github.com/wbond/package_control/issues/1002
- Install PackageSync
- PackageSync: Sync Online - Define Online Sync Folder
`/Users/louis/Dropbox/Utilitaires/Sublime Text Package Syncing`
- Restart Sublime Text

## Dash
Restore purchases.
Set Sync folder to Dropbox.

## DaisyDisk
brew cask install daisydisk
- Install license.
TODO: replace with defaults.

## Day-o
brew cask install day-o
- Set preferences to "EEEE HH:mm" in Day-O.
- Remove the system hour.
- Remove the system clock.
TODO: replace with defaults.

## Divvy
brew cask install divvy
- Install license.
- Set shortcut to alt+1.
- Set other preferences if any.
TODO: replace with defaults or version the preferences file?

## Kaleidoscope
brew cask install kaleidoscope
- Install license.
TODO: replace with defaults?

## Typinator
brew cask install typinator59
- Preferences in `Dropbox/Utilitaires/Typinator`.
TODO: replace with defaults?

## Other casks
brew cask install flux
brew cask install free-ruler
brew cask install mactracker
brew cask install slack
- QuickLook plugins
brew cask install provisioning qlcolorcode qlimagesize qlmarkdown qlprettypatch qlstephen quicklook-csv quicklook-json webpquicklook
killall Finder

## Set OS X preferences (may need apps to be installed first?)
~/Developer/dotfiles/osx

## iCloud
TODO

## Delivery Status Dashboard widget
https://junecloud.com/software/dashboard/delivery-status.html

# TODO

http://star.mit.edu/cluster/docs/0.92rc2/manual/shell_completion.html

MoSh

https://github.com/mathiasbynens/dotfiles

https://github.com/neovim/neovim

vimrc

vundle
