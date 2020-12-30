<h1 id='contents'>Table of Contents</h1>

- [MACOS DEV ENVIRONMENT](#macos-dev-environment)
  - [XCode](#xcode)
  - [Homebrew](#homebrew)
  - [VSCode](#vscode)
  - [Oh-My-Zsh](#oh-my-zsh)
    - [Update Agnoster.zsh-theme](#update-agnosterzsh-theme)
    - [Fonts](#fonts)
  - [iTerm2](#iterm2)
  - [Git](#git)
    - [Gitconfig](#gitconfig)
  - [Node.js](#nodejs)
    - [NVM (Node Version Manager)](#nvm-node-version-manager)
    - [Nodemon](#nodemon)
  - [PostgreSQL](#postgresql)
    - [Import Entire DB](#import-entire-db)
  - [MongoDB](#mongodb)
    - [Start MongoDB Service](#start-mongodb-service)
    - [Stop MongoDB Service](#stop-mongodb-service)
    - [Import Dump](#import-dump)
    - [Roto 3T](#roto-3t)
  - [Python3](#python3)
    - [Django](#django)

# MACOS DEV ENVIRONMENT

## XCode

[Go Back to Contents](#contents)

Install `XCode`

```Bash
  xcode-select --install
```

After installing `XCode` we can check if it was successfully installed

```Bash
  xcode-select -p
  # /Applications/Xcode.app/Contents/Developer
```

## Homebrew

[Go Back to Contents](#contents)

Install `homebrew`

```Bash
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Check if `homebrew` was successfully installed

```Bash
  brew doctor
  # Your system is ready to brew.
```

Update `homebrew`

```Bash
  brew install wget

  # Updating Homebrew...
  # ==> Auto-updated Homebrew!
  # Updated 1 tap (homebrew/core).
  # ==> New Formulae
  # cargo-audit                                                     cargo-watch
  # ==> Updated Formulae
  # Updated 2 formulae.

  # ==> Downloading https://homebrew.bintray.com/bottles/libunistring-0.9.10.big_sur.bottle.tar.gz
  # ==> Downloading from https://d29vzk4ow07wi7.cloudfront.net/# 5d336bd939f678b48dc1ced97ed0def383999638d80caa8cb2da780594556524?res
  # ######################################################################## 100.0%
  # ==> Downloading https://homebrew.bintray.com/bottles/libidn2-2.3.0.big_sur.bottle.tar.gz
  # ==> Downloading from https://d29vzk4ow07wi7.cloudfront.net/# 65523d89d65893a402f9f2641793314d5c18f5ba115400ef6ad372b8c177ebd9?res
  # ######################################################################## 100.0%
  # ==> Downloading https://homebrew.bintray.com/bottles/wget-1.20.3_2.big_sur.bottle.tar.gz
  # ==> Downloading from https://d29vzk4ow07wi7.cloudfront.net/# c965fd423db73afdcce5ccde8af2783b5659ec2287bf02ae6a982fd6dcbd6292?res
  # ######################################################################## 100.0%
  # ==> Installing dependencies for wget: libunistring and libidn2
  # ==> Installing wget dependency: libunistring
  # ==> Pouring libunistring-0.9.10.big_sur.bottle.tar.gz
  # 🍺  /usr/local/Cellar/libunistring/0.9.10: 55 files, 4.5MB
  # ==> Installing wget dependency: libidn2
  # ==> Pouring libidn2-2.3.0.big_sur.bottle.tar.gz
  # 🍺  /usr/local/Cellar/libidn2/2.3.0: 72 files, 808.2KB
  # ==> Installing wget
  # ==> Pouring wget-1.20.3_2.big_sur.bottle.tar.gz
  # 🍺  /usr/local/Cellar/wget/1.20.3_2: 50 files, 4.0MB
```

## VSCode

[Go Back to Contents](#contents)

Install `VSCode` using `homebrew`, later, we are going set `VSCode` as the default editor.

```Bash
  brew install visual-studio-code
```

## Oh-My-Zsh

[Go Back to Contents](#contents)

Install [Oh-My-Zsh](https://ohmyz.sh/#install) to install custom zsh themes

```Bash
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Fix oh-my-zsh permissions

```Bash
  compaudit | xargs chmod g-w,o-w /usr/local/share/zsh
  compaudit | xargs chmod g-w,o-w /usr/local/share/zsh/site-functions
```

Update `~/.zshrc` file

```Bash
  # = Default Editor
  export EDITOR="code -w"

  # = Alias
  # _ General
  alias z="code ~/.zshrc"
  alias sz="source ~/.zshrc"
  alias task="htop"
  alias lsa="ls -al"
  alias git-ignore='code /Users/roger-that/.gitignore_global'
  alias git-config='code /Users/roger-that/.gitconfig'
  alias ssh-config='code /Users/roger-that/.ssh/config'
  alias puma="ps aux | grep puma"
  alias roger="ssh roger@10.0.0.30"

  # _ GitHub
  alias gs="git status"
  alias gc="git commit"
  alias gui="git update-index --assume-unchanged"
  alias gnui="git update-index --no-assume-unchanged"
  alias guil="git ls-files -v | grep '^h'"

  # _ Python
  alias python="/Library/Frameworks/Python.framework/Versions/3.9/bin/python3"
  alias pip="pip3"
  alias pmr="python manage.py runserver"
  alias pms="python manage.py shell"
  alias pm="python manage.py"

  # _ Ruby on Rails
  alias bi="bundle install $@"
  alias bu="bundle update $@"

  # _ Scripts
  alias git-status='/Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes/Shell_Script/Scripts/git-status/git-status.sh'
  alias @img='python3 /Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes/Python/11_Scripts/Imgur/Imgur.py'
  alias @new='/Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes/Shell_Script/Scripts/git-new-repo/git-new-repo.sh'
  alias @open='/Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes/Shell_Script/Scripts/open-app/open-app.sh'
  alias @screenshot='/Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes/Shell_Script/Scripts/macos-screenshot-rename/macos-screenshot-rename.sh'
  alias touch='/Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes/Shell_Script/Scripts/touch-open/touch-open.sh'
  alias clean='/Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes/Shell_Script/Scripts/clean-my-node/clean-my-node.sh'

  # = Shortcuts
  alias desk="cd /Users/roger-that/Desktop"
  alias desktop="cd /Users/roger-that/Desktop"
  alias codes="cd /Users/roger-that/Library/Mobile\ Documents/com~apple~CloudDocs/Codes"
  alias config="cd /Users/roger-that/Documents/Roger-That/Dev/1-Config"
  alias rubo="code /Users/roger-that/Documents/Roger-That/Dev/1-Config/YML/.prepanywhere_rubocop.yml"

  # = Credentials
  export GOOGLE_APPLICATION_CREDENTIALS="/Users/roger-that/Library/Mobile Documents/com~apple~CloudDocs/Codes/Python/11_Scripts/OCR_Handwriting/Python_Google_Vision_API/image-handwriting-042df442428e.json"

  # = Functions
  function die() {
      ps aux | grep "$@" | awk '{print $2}' | while read -r PID ; do
          if [ -n "$(ps -p $PID -o pid=)" ]; then
              kill -9 $PID
              echo "$PID ✝ Rest in Peace"
          fi
      done
  }

  function findf() {
      find . -type f -name "*$@*"
  }

  function findd() {
      find . -type d -name "*$@*"
  }

  function portkill () {
      if (lsof -t -i:$1) {
          kill -QUIT $(lsof -sTCP:LISTEN -i tcp:$1 -t)
      } else {
          echo "All Good"
      }
  }

  function killport () {
      if (lsof -t -i:$1) {
          kill -QUIT $(lsof -sTCP:LISTEN -i tcp:$1 -t)
      } else {
          echo "All Good"
      }
  }

  function kport() {
      lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }' | xargs kill
  }

  export ZSH="/Users/roger-that/.oh-my-zsh"
  ZSH_THEME="agnoster"
  plugins=(git)
  source $ZSH/oh-my-zsh.sh
```

### Update Agnoster.zsh-theme

[Go Back to Contents](#contents)

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

### Fonts

[Go Back to Contents](#contents)

Download `powerline` [fonts](https://github.com/powerline/fonts)

```Bash
  git clone https://github.com/powerline/fonts.git --depth=1
  cd fonts
  ./install.sh
  cd ..
  rm -rf fonts
```

## iTerm2

[Go Back to Contents](#contents)

Download and install [iTerm2](https://iterm2.com/)

- [Config Tutorial](https://www.freecodecamp.org/news/how-to-configure-your-macos-terminal-with-zsh-like-a-pro-c0ab3f3c1156/)
- [Themes](https://iterm2colorschemes.com/)

## Git

[Go Back to Contents](#contents)

Install `Git` using `homebrew`

```Bash
  brew install git
```

Create `.gitignore_global` file

```Bash
  touch ~/.gitignore_global
```

### Gitconfig

[Go Back to Contents](#contents)

Update `~/.gitconfig`

```Bash
  [core]
    excludesfile = /Users/roger-that/.gitignore_global
  [alias]
    ls = "!git ls-files -v | grep '^h'"
    pullup = "!git pull upstream master"
    conflict="!git diff --check | grep -i conflict"
    when="!git show -1 --stat"
    log1 = "!git log --oneline"
  [merge]
    tool = vscode
  [mergetool "vscode"]
    cmd = code -n --wait $MERGED
  [diff]
    tool = vscode
  [difftool "vscode"]
    cmd = code -n --wait --diff $LOCAL $REMOTE
```

## Node.js

[Go Back to Contents](#contents)

Install `Node.js` using `homebrew`

```Bash
  brew install node
```

Check node version

```Bash
  node -v
  # v15.5.0

  npm -v
  # 7.3.0
```

### NVM (Node Version Manager)

[Go Back to Contents](#contents)

- [Repo](https://github.com/nvm-sh/nvm)

```Bash
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
```

In `~/.zshrc`

- Add the following lines

  ```Bash
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  ```

### Nodemon

[Go Back to Contents](#contents)

Install `nodemon` globally using `npm`

```Bash
  npm install -g nodemon
```

## PostgreSQL

[Go Back to Contents](#contents)

Install `PostgreSQL` using `homebrew`

```Bash
  brew install postgresql
```

Start PostgreSQL

```Bash
  brew services start postgresql
```

### Import Entire DB

[Go Back to Contents](#contents)

```Bash
  psql -f path/dumpfile.sql postgres
```

## MongoDB

[Go Back to Contents](#contents)

Add a custom tap of `MongoDB`

```Bash
  brew tap mongodb/brew
```

Install the latest available production release of MongoDB Community Server

```Bash
  brew install mongodb-community
```

### Start MongoDB Service

[Go Back to Contents](#contents)

```Bash
  brew services start mongodb-community
```

### Stop MongoDB Service

[Go Back to Contents](#contents)

```Bash
  brew services stop mongodb-community
```

### Import Dump

[Go Back to Contents](#contents)

```Bash
  mongorestore /Users/roger-that/Desktop/MongoDB
```

### Roto 3T

[Go Back to Contents](#contents)

MongoDB Atlas Connection

![](https://i.imgur.com/VghSgOE.png)

![](https://i.imgur.com/sXhlMLb.png)

![](https://i.imgur.com/fkTJViL.png)

![](https://i.imgur.com/IMuwA1r.png)

## Python3

[Go Back to Contents](#contents)

Install `Python` using `homebrew`

```Bash
  brew install python
```

Check python version

```Bash
  python3 --version
  # Python 3.9.1

  pip3 --version
  # pip 20.3.1 from /usr/local/lib/python3.9/site-packages/pip (python 3.9)
```

Python packages

```Bash
  pip list
  # Package    Version
  # ---------- -------
  # asgiref    3.3.1
  # pip        20.3.3
  # pytz       2020.5
  # setuptools 51.0.0
  # sqlparse   0.4.1
  # wheel      0.36.1
```

### Django

[Go Back to Contents](#contents)

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
