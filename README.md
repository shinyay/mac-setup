# MacBook Pro 2017 setup
---
## Homebrew
```
$ xcode-select --install
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
$ brew doctor
$ brew update
```

### Homebrew Initial Install
```
$ brew cask install appcleaner
$ brew cask install google-japanese-ime
$ brew cask install iterm2
```

```
$ bin/brew-initial-install.sh
```

### Git from Apple Git
```
$ brew install git
$ curl https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/git.fish -o ~/.config/fish/completions/git.fish
```

> - [Fish補完 https://github.com/fish-shell/fish-shell/tree/master/share/completions](https://github.com/fish-shell/fish-shell/tree/master/share/completions)

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

### Curl from Apple Curl
```
$ brew install curl
$ echo 'set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths' >> ~/.config/fish/config.fish
```

### Fish
- fish
  - `sudo fish -c "echo '/usr/local/bin/fish' >> /etc/shells"`
  - `chsh -s /usr/local/bin/fish`

### Fisherman
```
$ fish -v
fish, version 3.0.2
```

- fisherman
  - `curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish`

```
$ fisher -v
fisher version 3.2.9 ~/.config/fish/functions/fisher.fish
```

#### Usecase
```
$ fisher 公式プラグイン名
$ fisher omf/oh-my-fishのプラグイン名
$ fisher GitHubユーザー名/リポジトリ名
$ fisher GistのURL
$ fisher ローカルのディレクトリ
```

#### Fish Plugin
##### peco

```
$ brew install peco 
$ fisher add oh-my-fish/plugin-peco 
$ vim ~/.config/fish/config.fish 
```

```
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
```

> [fzf](https://github.com/junegunn/fzf)

##### bass
Bash Wrapper
```
$ fisher add edc/bass
```

#### Fish Theme
```
$ fisher add omf/theme-agnoster
```
```
$ fisher add oh-my-fish/theme-bobthefish
```

#### Powerline fonts
```
$ git clone https://github.com/powerline/fonts.git
$ cd fonts/
$ ./install.sh
$ cd ..
$ rm -rf fonts
```

#### Iterm2 Preferences
- iTerm2 -> Preferences -> Profiles -> Text -> Font
  -  Source Code Pro for Powerline

- iTerm2 -> Preferences -> Profiles -> Window
  - Style: **Fullscreen**
  - Screen: **Screen with Cursor**
  - Space: **All spaces**

- iTerm2 -> Preferences -> Keys -> Hotkey
  - **Show/hide all windows with a system-wide hotkey**

- iTerm2 -> Preferences -> Profiles -> Colors
  - Color Presets -> Import

> - [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes)
>   - Solarized Dark - Patched
>   - [Dracula](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula.itermcolors)

- iTerm2 -> Preferences -> Appearance -> Tabs
  - **Show tab bar even when there is only one tab**

#### Fish Tips

```
$ fish_config
$ fish_update_completions
$ dirh
$ prevd
```

### Fish Completion

```
$ curl https://raw.githubusercontent.com/docker/docker-ce/master/components/cli/contrib/completion/fish/docker.fish -o ~/.config/fish/completions/docker.fish
$ curl https://raw.githubusercontent.com/docker/compose/master/contrib/completion/fish/docker-compose.fish -o ~/.config/fish/completions/docker-compose.fish
```

## Mac システム環境設定
### スピーチ
- アクセシビリティ -> スピーチ
  - システムの声: Samantha
  - キーを押したときに選択しているテキストを読み上げる


---
---
---

### Homebrew Taps (third-party repositories)
```
$ brew tap
homebrew/cask
homebrew/core
homebrew/cask-versions
pivotal/tap
cloudfoundry/tap
```

### Homebrew Formulae
- git
- jenv
- cf-cli
- pivnet-cli
- cf-uaac
- wget
- kubernetes-helm
- mysql --client-only
- flyway
- graphviz
- kubernetes-cli
- azure-cli
  - `brew uninstall --ignore-dependencies python`
- awscli


### Homebrew Cask
```
$ brew cask
```

- appcleaner
- google-japanese-ime
- iterm2

- visual-studio-code
- zoomus

- java8
- insomniax
- google-chrome-canary
- google-cloud-sdk
- mysql-shell
- docker-edge
- google-cloud-sdk
- minikube
- android-file-transfer
- vlc
- franz
- the-unarchiver
- polar-bookshelf
- postman
- duet

```
$ brew cask cleanup
```

### Cloud Foundry Repository

```
$ brew tap cloudfoundry/tap
```

- `brew install <cf-cli | cf-uaac | bosh-init | bosh-cli | credhub-cli | bbl>`

|Package|Description|
|-------|-----------|
|cf-cli|The official Cloud Foundry CLI|
|bosh-init|The official CLI to create and update the BOSH Director VM|
|bosh-cli|The official new BOSH CLI|
|credhub-cli|The official CredHub CLI|
|bbl|The official bosh-bootloader CLI|


```
$ brew tap pivotal/tap
```
- `brew install pivotal/tap/pivnet-cli`

#### Fish
- fish
  - `sudo fish -c "echo '/usr/local/bin/fish' >> /etc/shells"`
  - `chsh -s /usr/local/bin/fish`
- peco
- fzf

#### Plarform Acceleration Lab
- 

## Fisherman
The fish-shell plugin manager. 
[fisherman](https://github.com/fisherman/fisherman)

### Install
```
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
```

## Fish
### Configuration
```
$ vim $HOME/.config/fish/config.fish

set -x HOMEBREW_CASK_OPTS='--appdir=/Applications'
```

### Fish Plugin
- [z](https://github.com/fisherman/z)
  - `fisher install z`
- [fzf](https://github.com/fisherman/fzf)
  - Prerequisite: `brew install fzf`
- [gitignore](https://github.com/fisherman/gitignore)
- [fish-bd](https://github.com/0rax/fish-bd)
  - `fisher install 0rax/fish-bd`
- [peco](https://github.com/oh-my-fish/plugin-peco)
  - `brew install peco`
  - `fisher oh-my-fish/plugin-peco`
    - Edit .config/fish/functions/fish_user_key_bindings.fish
      - `bind \cr 'peco_select_history (commandline -b)'`

### Fish Theme
- [bobthefish](https://github.com/oh-my-fish/theme-bobthefish)
  - `fisher install omf/theme-bobthefish`
#### Fish Font
- [powerline font](https://github.com/powerline/fonts)
```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

- iTerm
  - Profiles>Text＞Font＞ChangeFont
    - Meslo LG M for Powerline

## jEnv
```
$ brew install jenv
```

### JAVA_HONE with jEnv
Configure in config.fish

```
set -U JAVA_HOME ( jenv javahome )
```

## SDKMAN!
### Install
```
$ bash
$ curl -s "https://get.sdkman.io" | bash
```
### ~/.config/fish/functions/sdk.fish
```
function sdk --description 'Software Development Kit Manager'
  set after_env (mktemp -t env)
  set path_env (mktemp -t env)

    bash -c "source ~/.sdkman/bin/sdkman-init.sh && sdk $argv && printenv > $after_env"

    # remove any pre-existing .sdkman paths
    for elem in $PATH
      switch $elem
        case '*/.sdkman/*'
          # ignore
        case '*'
          echo "$elem" >> $path_env
      end
    end

    for env in (cat $after_env)
      set env_name (echo $env | sed s/=.\*//)
      set env_value (echo $env | sed s/.\*=//)
      switch $env_name
        case 'PATH'
          for elem in (echo $env_value | tr ':' '\n')
            switch $elem
              case '*/.sdkman/*'
                echo "$elem" >> $path_env
            end
          end
        case '*'
          switch $env_value
            case '*/.sdkman/*'
              eval set -g $env_name $env_value > /dev/null
          end
      end
    end
    set -gx PATH (cat $path_env) ^ /dev/null

    rm -f $after_env
    rm -f $path_env
end
```

### Edit config.fish for no-response-problem
```
$ vim ~/.config/fish/config.fish

sdk help > /dev/null
```

```
$ vim ~/.sdkman/etc/config
sdkman_auto_selfupdate=true
```

### Beta Channel

```
$ sed -i.bak '/sdkman_beta/s/false/true/g' $HOME/.sdkman/etc/config
$ sdk selfupdate force
```

### Candidates
- Gradle
  - Gradle 4.8.1 (as of July-2-2018)
- Kotlin
  - Kotlin version 1.2.51-release-125 (JRE 1.8.0_172-b11) (as of July-5-2018)

## Docker
- [Docker Community Edition for Mac](https://store.docker.com/editions/community/docker-ce-desktop-mac)
  - `$ brew cask install docker-edge`

## Google Cloud SDK
- [macOS 用のクイックスタート](https://cloud.google.com/sdk/docs/quickstart-macos)
  - `$ brew cask install google-cloud-sdk`
### SDK Initialize
- `$ gcloud init`

## Install Kubectl
- `gcloud components install kubectl`

## Knative using riff on Minikube
- https://projectriff.io/docs/getting-started-with-knative-riff-on-minikube/
### Minikube
- Minikube and Hyperkit as the vm driver

#### Install Hyperkit as the vm driver
```
$ curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-hyperkit \
; and chmod +x docker-machine-driver-hyperkit \
; and sudo mv docker-machine-driver-hyperkit /usr/local/bin/ \
; and sudo chown root:wheel /usr/local/bin/docker-machine-driver-hyperkit \
; and sudo chmod u+s /usr/local/bin/docker-machine-driver-hyperkit
```
#### Install Minikube
`$ brew cask install minikube`

#### Create a Minikube cluster
```
$ minikube start --memory=8192 --cpus=4 \
--kubernetes-version=v1.10.5 \
--vm-driver=hyperkit \
--bootstrapper=kubeadm \
--extra-config=controller-manager.cluster-signing-cert-file="/var/lib/localkube/certs/ca.crt" \
--extra-config=controller-manager.cluster-signing-key-file="/var/lib/localkube/certs/ca.key" \
--extra-config=apiserver.admission-control="LimitRanger,NamespaceExists,NamespaceLifecycle,ResourceQuota,ServiceAccount,DefaultStorageClass,MutatingAdmissionWebhook"
```

#### Confirm kubectl context
- `$ kubectl config current-context`

#### Monitor Minikube cluster
- `$ brew install watch`
- `$ watch -n 1 kubectl get pod --all-namespaces`

### Install riff CLI
- v0.1.0 as of 29-July-2018
```
$ curl -LO https://github.com/projectriff/riff/releases/download/v0.1.0/riff-darwin-amd64.tgz \
; and tar xvzf riff-darwin-amd64.tgz \
; and sudo mv riff /usr/local/bin/
```

```
$ riff version
Version
  riff cli: 0.1.0
```

### Install Knative

`$ riff system install --node-port`

### Configure Kubernetes Secret

`echo -n 'DOCKERHUB-USERNAME/PWD' | base64`

`$ vim dockerhub-push-credentials.yaml`

```
apiVersion: v1
kind: Secret
metadata:
  name: push-credentials
  annotations:
    build.knative.dev/docker-0: https://index.docker.io/v1/
type: kubernetes.io/basic-auth
data:
  username: BASE64-USERNAME
  password: BASE64-PASSWORD
```

`$ kubectl apply -f dockerhub-push-credentials.yaml`
`$ riff namespace init default --secret push-credentials`

### Create Function
```
$ riff function create node square \
  --git-repo https://github.com/shinyay/node-func-square.git \
  --artifact square.js \
  --image shinyay/node-func-square
```

### Function/Minikube Cluser Cleanup
- Function: `$ riff service delete square`
- Minikube: `$ minikube delete`

## IntelliJ IDEA
### Appearance & Behavior
#### System Settings
- Reopen last project on startup : OFF
- Open project in new window : ON

### Editor
#### General
- Ensure line feed at file end on Save : ON
#### General - Appearance
- Show method separators : ON
- Show whitespaces : ON
#### General - Code Completion
- Case sensitive completion : None
#### Code Style
- Line separator (for new files) : Unix and OS X (\n)
#### File Encodings
- Project Encoding: UTF-8
- Default encoding for properties files: UTF-8
- Transparent native-to-ascii conversion : ON
### Build, Execution, Deployment
#### Compiler - Kotlin Compiler
- Target JVM version : 1.8

## Monosnap
- https://www.monosnap.com
---
---




# Macbook 2017 setup
---
- Desktop Configuration
- Application Install
  - Homebrew
  - Homebrew Cask
  - SDKMAN
  - ReadKit
  - Monosnap
- Homebrew
  - Git
  - jEnv
  - Cloud Foundry CLI
- Homebrew Cask
  - AppCleaner
  - Google IME
  - Visual Studio Code
  - iTerm2
  - Java8
  - Docker for Mac

---

## Desktop Configuration

### Dock Size

システム環境設定 > Dock
- サイズ: 小
- 拡大: 最大

### Trackpad

システム環境設定 > トラックパッド
- ポイントとクリック > タップでクリック

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
$ brew tap cloudfoundry/tap
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
