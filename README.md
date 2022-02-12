<h1 id='contents'>Table of Contents</h1>

- [MACOS DEV ENVIRONMENT](#macos-dev-environment)
  - [Links](#links)
  - [XCode](#xcode)
  - [Homebrew](#homebrew)
  - [VSCode](#vscode)
  - [Terminal](#terminal)
    - [Bash](#bash)
    - [Oh-My-Zsh](#oh-my-zsh)
      - [Update Agnoster.zsh-theme](#update-agnosterzsh-theme)
      - [Update Git Plugins](#update-git-plugins)
    - [Fonts](#fonts)
    - [NeoVim](#neovim)
    - [iTerm2](#iterm2)
    - [Tmux](#tmux)
  - [GitHub](#github)
    - [Gitconfig](#gitconfig)
  - [Node.js](#nodejs)
    - [NVM (Node Version Manager)](#nvm-node-version-manager)
    - [Packages](#packages)
  - [PostgreSQL](#postgresql)
    - [pg_dump / pg_restore](#pg_dump--pg_restore)
  - [MongoDB](#mongodb)
    - [Dump / Restore](#dump--restore)
    - [Roto 3T](#roto-3t)
  - [Python3](#python3)
    - [Set Python3 As Default Python](#set-python3-as-default-python)
    - [Flake8 Linter](#flake8-linter)
    - [Django](#django)
  - [Redis](#redis)
- [BKP](#bkp)

# MACOS DEV ENVIRONMENT

## Links

- [Oh-My-Zsh](https://ohmyz.sh/#install)
- [How to Increase or Decrease Launchpad Icons Size in macOS?](https://www.webnots.com/how-to-increase-or-decrease-launchpad-icons-size-in-macos/)
- [How to Show Battery Percentage on macOS Monterey](https://beebom.com/how-show-battery-percentage-macos/)
- [Download xCode Manually](https://developer.apple.com/download/all/)
- [Git Fresh Install](https://kbroman.org/github_tutorial/pages/first_time.html)
- [GitHub SSH Keys](https://github.com/settings/keys)
- [Powerline Fonts](https://github.com/powerline/fonts)
- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
- [iTerm2](https://iterm2.com/)
- [iTerm2 Config Tutorial](https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/)
- [iTerm2 Themes](https://iterm2colorschemes.com/)
- [NVM Repo](https://github.com/nvm-sh/nvm)
- [Set Python3 As Default Python](https://dev.to/malwarebo/how-to-set-python3-as-a-default-python-version-on-mac-4jjf)

## XCode

- [Download xCode Manually](https://developer.apple.com/download/all/)

Install `XCode`

```Bash
  xcode-select --install
```

After installing `XCode` we can check if it was successfully installed

```Bash
  xcode-select -p
  # /Applications/Xcode.app/Contents/Developer
```

> If you are doing React Native app, you need to download xCode from Apple Store

## Homebrew

```Bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "export PATH=\"\$PATH:/opt/homebrew/bin/\"" >> .zshrc
```

```Bash
  brew doctor
  # Your system is ready to brew.
```

```Bash
  brew update
  brew install bash
  brew install wget
  brew install visual-studio-code
  brew install neovim
  brew install git
  brew install node
  brew install postgresql
  brew tap mongodb/brew
  brew install mongodb-community
  brew install python
  brew install tree
  brew install htop
  brew install gotop
  brew install jq
  brew install ripgrep
  brew install bash
  brew install ngrok/ngrok/ngrok
```

## VSCode

Install `VSCode` using `homebrew`, later, we are going set `VSCode` as the default editor.

```Bash
  brew install visual-studio-code
```

## Terminal

### Bash

```Bash
  brew install bash
  /opt/homebrew/bin//bash
  sudo ln -s /opt/homebrew/bin/bash /usr/local/bin
```

### Oh-My-Zsh

- [Oh-My-Zsh](https://ohmyz.sh/#install)

```Bash
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Update Agnoster.zsh-theme

In `~/.oh-my-zsh/themes/agnoster.zsh-theme`

```Bash
  prompt_context() {
    if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
      prompt_segment black default "%(!.%{%F{yellow}%}.)%"
    fi
  }

  ...

  prompt_dir() {
    prompt_segment blue $CURRENT_FG '%c'
  }
```

#### Update Git Plugins

In `~/.oh-my-zsh/plugins/git/git.plugin.zsh`

### Fonts

- [Powerline Fonts](https://github.com/powerline/fonts)

  ```Bash
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts

    # UnixOS
    ./install.sh

    # Windows
    install.ps1
  ```

- [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

  - Manually download fonts (MacOS)

    ```Bash
      cd ~/Library/Fonts && curl -fLo "Hack Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf
      cd ~/Library/Fonts && curl -fLo "Monoid Retina Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Monoid/Retina/complete/Monoid%20Retina%20Nerd%20Font%20Complete.ttf
      cd ~/Library/Fonts && curl -fLo "Droid Sans Mono Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
      cd ~/Library/Fonts && curl -fLo "Roboto Mono Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/RobotoMono/Regular/complete/Roboto%20Mono%20Nerd%20Font%20Complete.ttf
    ```

### NeoVim

```Bash
  brew install neovim
```

```Bash
  cd
  mkdir .config
  cd .config
  git clone https://github.com/Roger-Takeshita/nvim.git
```

### iTerm2

- [iTerm2](https://iterm2.com/)
- [iTerm2 Config Tutorial](https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/)
- [iTerm2 Themes](https://iterm2colorschemes.com/)

### Tmux

```Bash
  cd
  git clone https://github.com/gpakosz/.tmux.git
  ln -s -f .tmux/.tmux.conf
  cp .tmux/.tmux.conf.local .
```

## GitHub

- [GitHub SSH Keys](https://github.com/settings/keys)
- [Git Fresh Install](https://kbroman.org/github_tutorial/pages/first_time.html)

Install `Git` using `homebrew`

```Bash
  brew install git
```

Create `.gitignore_global` file

```Bash
  touch ~/.gitignore_global
  git config --global user.name "Roger Takeshita"
  git config --global user.email "your_email@example.com"
  ssh-keygen -t rsa -C "your_email@example.com"
  pbcopy < ~/.ssh/id_rsa.pub
```

### Gitconfig

Update `~/.gitconfig`

```Bash
  [core]
    excludesfile = ~/.gitignore_global
    editor = code --wait
    # editor = nvim

  [alias]
    # diffs = "!git diff --staged"
    ls = "!git ls-files -v | grep '^h'"
    ignore= "!git update-index --assume-unchanged"
    no-ignore= "!git update-index --no-assume-unchanged"
    pullup = "!git pull upstream master"
    conflict = "!git diff --check | grep -i conflict"
    when = "!git show -1 --stat"
    # log1 = "!git log --oneline"
    log1 = "!git log --pretty=\"%C(Yellow)%h %C(reset)%ad %C(Cyan)%an: %C(reset)%s\" --date=short"
    # search = "!git log --pretty=\"%C(Yellow)%h %C(reset)%ad %C(Cyan)%an: %C(reset)%s\" --date=short | grep \"$@\""
    log-tree = log --pretty=format:\"%C(yellow)%h %ar %C(auto)%d %Creset %s, %Cblue%cn\" --graph --all
```

## Node.js

Install `Node.js` using `homebrew`

```Bash
  brew install node
```

### NVM (Node Version Manager)

- [NVM Repo](https://github.com/nvm-sh/nvm)

```Bash
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

In `~/.zshrc`

- Add the following lines

  ```Bash
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  ```

### Packages

```Bash
  npm install -g nodemon
  npm install -g git-new
  npm install -g git-pull
  npm install -g git-folder-status
  npm install -g aws-s3-files
```

## PostgreSQL

Install `PostgreSQL` using `homebrew`

```Bash
  brew install postgresql
  brew services start postgresql
```

```Bash
  psql
  CREATE ROLE postgres WITH SUPERUSER CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;
```

### pg_dump / pg_restore

```Bash
  pg_dump > ~/Desktop/postgres_dbs.sql
  psql -f ~/Desktop/postgres_dbs.sql postgres
```

## MongoDB

Add a custom tap of `MongoDB`

```Bash
  brew tap mongodb/brew
  brew install mongodb-community
  brew services start mongodb-community
  brew services stop mongodb-community
```

### Dump / Restore

```Bash
  cd ~/Desktop
  mongodump
  mongorestore ~/Desktop/dump
```

### Roto 3T

MongoDB Atlas Connection

![](https://i.imgur.com/VghSgOE.png)

![](https://i.imgur.com/sXhlMLb.png)

![](https://i.imgur.com/fkTJViL.png)

![](https://i.imgur.com/IMuwA1r.png)

## Python3

Install `Python` using `homebrew`

```Bash
  brew install python
  python3 -m pip install --user --upgrade pynvim
```

```Bash
  /opt/homebrew/opt/python@3.9/bin/python3.9 -m pip install --upgrade pip
```

### Set Python3 As Default Python

- [Set Python3 As Default Python](https://dev.to/malwarebo/how-to-set-python3-as-a-default-python-version-on-mac-4jjf)

```Bash
  echo "alias python=\"/opt/homebrew/bin/python3\"" >> ~/.zshrc
  ln -s -f /opt/homebrew/bin/python3 /usr/local/bin/python
```

```Bash
  # Look where Python is installed
  ls -l /usr/local/bin/python*

  # lrwxr-xr-x  1 roger-that  admin  24 24 Feb 08:48 /usr/local/bin/python -> /usr/local/bin/python3.9
  # lrwxr-xr-x  1 roger-that  admin  38 24 Feb 08:42 /usr/local/bin/python3 -> ../Cellar/python@3.9/3.9.2/bin/python3
  # lrwxr-xr-x  1 roger-that  admin  45 24 Feb 08:42 /usr/local/bin/python3-config -> ../Cellar/python@3.9/3.9.2/bin/python3-config
  # lrwxr-xr-x  1 roger-that  admin  40 24 Feb 08:42 /usr/local/bin/python3.9 -> ../Cellar/python@3.9/3.9.2/bin/python3.9
  # lrwxr-xr-x  1 roger-that  admin  47 24 Feb 08:42 /usr/local/bin/python3.9-config -> ../Cellar/python@3.9/3.9.2/bin/python3.9-config

  # Set python 3.9 as default python
  ln -s -f /usr/local/bin/python3.9 /usr/local/bin/python
```

### Flake8 Linter

- [Flake8](https://flake8.pycqa.org/en/latest/)

  ```Bash
    python -m pip install flake8
  ```

### Django

Install `Django` using `pip`

```Bash
  pip3 install Django
  pip install Django
```

Check django version

```Bash
  django-admin --version
  # 3.1.4
```

## Redis

```Bash
  brew install redis
  brew services start redis
```

# BKP

- Mega Config
- TablePlus Queries
- iTerm2 Config
- iTerm2 Hotkeys
- KeyboardMaestro hotkeys
- MocOS finder hotkeys
