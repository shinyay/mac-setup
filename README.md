# MacBook Pro 2017 setup
---
## Terminal
### Homebrew
```
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
$ brew update
```

### Homebrew Cask
```
$ brew cask
```

### Homebrew
- git
- fish
  - `sudo fish -c "echo '/usr/local/bin/fish' >> /etc/shells"`
  - `chsh -s /usr/local/bin/fish`

### fisherman
The fish-shell plugin manager. 
[fisherman](https://github.com/fisherman/fisherman)

#### Install
```
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
```

### fish
#### config
```
$ vim $HOME/.config/fish/config.fish
```

```
set -x HOMEBREW_CASK_OPTS='--appdir=/Applications'
```

#### Plugin
- [z](https://github.com/fisherman/z)
- [fzf](https://github.com/fisherman/fzf)
  - Prerequisite: `brew install fzf`
- [gitignore](https://github.com/fisherman/gitignore)

# Macbook 2017 setup
---
- Desktop Configuration
- Application Install(2017)
  - Homebrew
  - Homebrew Cask
  - ReadKit
  - Monosnap
  - SDKMAN
- Homebrew
  - Git
  - Azure CLI
- Homebrew Cask
  - AppCleaner
  - Google 日本語入力
  - Visual Studio Code
  - iTerm2
  - Java9
  - Java8
  - Firefox Developr Edition
  - Docker for Mac
  
- Application Install(2016)
  - Atom
  - SDKMAN
  - Python3
  - Pandoc
  - Wercker CLI
---

## Desktop Configuration

### Dock Size

システム環境設定 > Dock
- サイズ: 小
- 拡大: 最大

### Trackpad

システム環境設定 > トラックパッド
- ポイントとクリック > タップでクリック

### Keyboard

システム環境設定 > キーボード > 修飾キー
- caps lock: control
システム環境設定 > キーボード > ショートカット > 入力ソース
- 前の入力ソースを選択: ⌘ + スペース

### Drag

システム環境設定 > アクセシビリティ > マウスとトラックパッド > トラックパッドオプション
- ドラッグを有効にする > 3本指のドラッグ

### Date

システム環境設定 > 日付と時計 > 時計
- 日付を表示

### Computer Name
システム環境設定 > 共有
- コンピュータ名

### Finder
システム環境設定 > 一般
- サイドバーのアイコンサイズ: 小

表示
- タブバーを表示
- パスバーを表示
- ステータスバーを表示

Finder > 環境設定 > 詳細
- すべてのファイル名拡張子を表示

## Application Install

### Google 日本語入力
https://www.google.co.jp/ime/

「ctrl」+「スペース」

### Homebrew
- macOS 用パッケージマネージャー
- https://brew.sh/index_ja.html

#### Install

```
$ sudo xcodebuild -license accept
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
$ brew update
```

#### brew tap
公式以外の formula を追加することのできる Homebrew のサブコマンド

```
$ brew tap <userName>/<repository>
```

This refers github repository 'https://github.com/<userName>/homebrew-<repository>'
tap is saved at **/usr/local/Library/Taps**

following commant shows list installed by 'brew tap':

```bash
$ brew tap
```

#### Application Install Directory via Homebrew

Mac does not load `.bashrc`. So add the following configuration.

```
$ cat << EOF >> ~/.bash_profile
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
EOF
$ cat << EOF >> ~/.bashrc
export HOMEBREW_CASK_OPTS='--appdir=/Applications'
EOF
```

### brew cask

[brew cask](https://github.com/caskroom/homebrew-cask/blob/master/USAGE.md)

```
$ brew tap caskroom/cask
```

#### brew cask install list

- [brew-cask-insall.sh](brew-cask-insall.sh)

`brew tap caskroom/versions`
- google-chrome-canary


### Java

#### Java 9

```
$ brew cask install java
```

#### Java 8

```
$ brew cask install java8
```

##### Java Version 確認
```
$ /usr/libexec/java_home -V
Matching Java Virtual Machines (2):
    9.0.1, x86_64:	"Java SE 9.0.1"	/Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home
    1.8.0_152, x86_64:	"Java SE 8"	/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home

/Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home
```

#### jEnv

Java の切り替え

```
$ brew install jenv
```

##### .bash_profile に追加

```
if which jenv > /dev/null; then
  export PATH="$HOME/.jenv/bin:$PATH"
  eval "$(jenv init -)"
fi
```

##### JDKを登録

```
$ jenv add $(/usr/libexec/java_home -v 1.8) 
oracle64-1.8.0.152 added
1.8.0.152 added
1.8 added
$ jenv add $(/usr/libexec/java_home -v 9) 
oracle64-9.0.1 added
9.0.1 added
9.0 added
```

##### JDKを表示

```
$ jenv versions
* system (set by /Users/shinyay/.jenv/version)
  1.8
  1.8.0.152
  9.0
  9.0.1
  oracle64-1.8.0.152
  oracle64-9.0.1
```

##### グローバル環境の切り替え

```
$ jenv global oracle64-9.0.1
```

##### JAVA_HOME exportプラグインを追加

```
$ jenv enable-plugin export
```

### Atom

#### Atom Packages Synchronization with apm stars

```
$ apm login
$ apm stars --installed
$ apm start --install
```

### SDKMAN!

#### Insrallation

```
$ curl -s "https://get.sdkman.io" | bash
$ source ${HOME}/.sdkman/bin/sdkman-init.sh
```

#### Confirmation

```
$ sdk version
==== BROADCAST =================================================================
* 14/01/17: Groovy 2.4.8 released on SDKMAN! #groovylang
* 06/01/17: Springboot 1.5.0.RC1 released on SDKMAN! #springboot
* 03/01/17: Gradle 3.3 released on SDKMAN! #gradle
================================================================================

SDKMAN 5.1.18+191
```
#### Beta Channel

```
$ sed -i.bak '/sdkman_beta/s/false/true/g' ${HOME}/.sdkman/etc/config
$ sdk selfupdate force
```

#### Gradle

```
$ $ sdk install gradle

Downloading: gradle 4.3.1

In progress...

######################################################################## 100.0%

Installing: gradle 4.3.1
Done installing!


Setting gradle 4.3.1 as default.
```

#### Kotlin

```
$ sdk install kotlin

Downloading: kotlin 1.1.61

In progress...

######################################################################## 100.0%

Installing: kotlin 1.1.61
Done installing!


Setting kotlin 1.1.61 as default.
```

#### Maven

```
$ sdk install maven

Downloading: maven 3.3.9

In progress...

######################################################################## 100.0%

Installing: maven 3.3.9
Done installing!


Setting maven 3.3.9 as default.
```

### IntelliJ IDEA
#### 改行コード
Preferences > Editor > Code Style > Line separator
- Unix and OS X(\n)

#### ファイル・エンコーディング
Android Studio > Preferences > Editor > File Encodings
- IDE Encoding: UTF-8
- Project Encoding: UTF-8
- Default encoding for properties files: UTF-8

#### 行番号の表示、スペースの表示
File > Settings > Editor > General > Apperance
- Show line numbers, Show whitespaces

### Git
#### Git 初期設定

|項目|コマンド|
|---|-------|
|ユーザ名|git config --global user.name "{ユーザー名}"|
|メールアドレス|git config --global user.email "{メールアドレス}"|
|日本語文字化け|git config --global core.quotepath false|
|改行コード混在時変換なし|git config --global core.safecrlf true|
|改行コード変換なし|git config --global core.autocrlf false|
|Vimエディタ|git config --global core.editor 'vim -c "set fenc=utf-8"'|
|Diffに色付け|git config --global color.diff auto<br>git config --global color.status auto<br>git config --global color.branch auto|


```
git config --global user.name "shinyay"
git config --global user.email "shinya.com@gmail.com"
git config --global core.quotepath false
git config --global core.safecrlf true
git config --global core.autocrlf false
git config --global core.editor 'vim -c "set fenc=utf-8"'
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
```
#### エイリアス
##### git log
`plog = log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso`
`glog = log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=format:'%c' --all --graph`

### Azure CLI
#### Mac - Homebrew

```
$ brew update
$ brew install azure-cli
```

#### Docker - Python Container

```
$ docker run -it python bash
```

##### Stable Build

```
$ pip install azure-cli
```

##### Edge Build

インストール
```
$ pip install --pre azure-cli --extra-index-url https://azurecliprod.blob.core.windows.net/edge
```

更新
```
$ pip install --upgrade --pre azure-cli --extra-index-url https://azurecliprod.blob.core.windows.net/edge --no-cache-dir
```

### Docker for Mac

```
$ brew cask info docker
docker: 17.09.1-ce-mac42,21090
https://www.docker.com/community-edition
Not installed
From: https://github.com/caskroom/homebrew-cask/blob/master/Casks/docker.rb
==> Names
Docker Community Edition
Docker CE
==> Artifacts
Docker.app (App)
```

```
$ brew cask install docker
==> Satisfying dependencies
==> Downloading https://download.docker.com/mac/stable/21090/Docker.dmg
######################################################################## 100.0%
==> Verifying checksum for Cask docker
==> Installing Cask docker
==> Moving App 'Docker.app' to '/Applications/Docker.app'.
🍺  docker was successfully installed!
```

### Python3
Install pyenv by **homebrew**

```
$ brew install pyenv
```

Edit .bash_profile

```
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
```

```
$ pyenv install --list
$ pyenv install 3.6.0
```


バージョン切り替え
```
$ pyenv global 3.6.0
$ pyenv rehash
```

確認
```
$ python --version
```

pipインストール
```
$ easy_install pip
$ pip list
```

パッケージインストール
```
$ pip freeze
$ pip freeze > pip_packages.txt
$ pip install -r pip_packages.txt
```

### Pandoc
```
$ brew install pandoc
```

### Wercker CLI
```
$ brew tap wercker/wercker
$ brew install wercker-cli
```
