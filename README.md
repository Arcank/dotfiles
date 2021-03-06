# New install

## iCloud
During a fresh install of OS X, sign into iCloud with Apple ID.

## System Preferences
* Change background image.
* Change resolution.
* Change trackpad or mouse preferences.
* Prevent computer from sleeping automatically when the display is off.
* Don't ask too often for App Store password.

- [ ] TODO: use defaults.

## zsh
```
chsh -s /bin/zsh
```

## Xcode
Open and install components or simply:
```
xcode-select --install
```

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
- Install the Powerline fonts.
git submodule init
git submodule update
./submodules/powerline-fonts/install.sh
cd
ln -s Developer/dotfiles/gitattributes .gitattributes
ln -s Developer/dotfiles/gitconfig .gitconfig
ln -s Developer/dotfiles/gitignore .gitignore
ln -s Developer/dotfiles/lldbinit .lldbinit
ln -s Developer/dotfiles/vimrc .vimrc
ln -s Developer/dotfiles/zshenv .zshenv
ln -s Developer/dotfiles/zshrc .zshrc
cd bin
ln -s ../Developer/dotfiles/bin/gitstats.py
```

## Homebrew, Cask and Mac App Store
Install Homebrew
```
cd && mkdir homebrew && curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C homebrew
cd && mkdir -p caskroom/bin
SetFile -a V homebrew
SetFile -a V caskroom
```
Install brews
```
brew bundle --file=Developer/dotfiles/Brewfile
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
