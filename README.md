# Macbook 2016 setup
---
- Desktop Configuration
- Application Install
  - AppCleaner
  - Homebrew
  - brewcask
  - Atom
  - SDKMAN
  - Docker for Mac
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

### Drag

システム環境設定 > アクセシビリティ > マウスとトラックパッド
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

### AppCleaner

- [SITE URL](http://freemacsoft.net/appcleaner/)

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

- appcleaner
- atom
- iterm2
- boostnote
- alfred
- java
- docker
- jdownloader

`brew tap caskroom/versions`
- google-chrome-canary

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

#### Gradle

```
$ sdk install gradle

Downloading: gradle 3.3

In progress...

######################################################################## 100.0%

Installing: gradle 3.3
Done installing!


Setting gradle 3.3 as default.
```

### Docker for Mac
Docker for Mac is installed by **homebrew-cask**

```
$ brew cask info docker
docker: 1.12.6.14937
https://www.docker.com/products/docker
Not installed
From: https://github.com/caskroom/homebrew-cask/blob/master/Casks/docker.rb
==> Name
Docker for Mac
==> Artifacts
Docker.app (app)

$ brew cask install docker
==> Downloading https://download.docker.com/mac/stable/1.12.6.14937/Docker.dmg
######################################################################## 100.0%
==> Verifying checksum for Cask docker
==> Moving App 'Docker.app' to '/Applications/Docker.app'
🍺  docker was successfully installed!
```

#### Docker Document
- [Docker Engine](http://docs.docker.jp/engine/index.html)
- [Docker Compose](http://docs.docker.jp/compose/overview.html)
- [Docker Machine](http://docs.docker.jp/machine/overview.html)

#### Docker for Mac Sample
##### pull & run image
```
$ docker run -d -p 80:80 --name webserver nginx
Unable to find image 'nginx:latest' locally
latest: Pulling from library/nginx
75a822cd7888: Pull complete
0aefb9dc4a57: Pull complete
046e44ee6057: Pull complete
Digest: sha256:fab482910aae9630c93bd24fc6fcecb9f9f792c24a8974f5e46d8ad625ac2357
Status: Downloaded newer image for nginx:latest
5346be803a0f4d5f185e273226f3d57dbca340a518421625f011b691c367277e
```

##### process
```
$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED              STATUS              PORTS                         NAMES
5346be803a0f        nginx               "nginx -g 'daemon off"   About a minute ago   Up About a minute   0.0.0.0:80->80/tcp, 443/tcp   webserver
```

##### Confirmation
```
$ curl -X GET http://localhost/
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, the nginx web server is successfully installed and
working. Further configuration is required.</p>

<p>For online documentation and support please refer to
<a href="http://nginx.org/">nginx.org</a>.<br/>
Commercial support is available at
<a href="http://nginx.com/">nginx.com</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
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
