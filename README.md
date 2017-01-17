# Macbook 2016 setup
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

### AppCleaner

- [SITE URL](http://freemacsoft.net/appcleaner/)

### Homebrew

#### Install

```
$ sudo xcodebuild -license accept
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
$ brew update
```

#### brew tap

Homebrew sub-command for **unofficial formula**

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

- atom
- iterm2
- boostnote
- alfred
- java

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
$ curl -s "https://get.sdkman.io" |
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
