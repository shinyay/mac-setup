# MacBook Pro (16-inch 2019)

---
# 1. Initial Setup

## Homebrew

- [x] Installation

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Authority for Homebrew

- [ ] (If you need it)

```shell
sudo chown -R $(whoami):admin /usr/local/*
sudo chmod -R g+w /usr/local/*
```

## SSH Key for GitHub

### Git Global Configuration

- [x] Configuration

```shell
git config --global user.name "shinyay" && \
git config --global user.email "" && \
git config --global core.quotepath false && \
git config --global core.safecrlf true && \
git config --global core.autocrlf false && \
git config --global core.editor 'vim -c "set fenc=utf-8"' && \
git config --global color.diff auto && \
git config --global color.status auto && \
git config --global color.branch auto && \
git config pull.ff only
```

### ssh-keygen
- [x] Generate SSH Key pair

```
ssh-keygen -t ed25519 -C 'mail address for github'
```

### SSH Keys on GitHub
- [x] Add a public key on the following site:

- [https://github.com/settings/keys](https://github.com/settings/keys)

## Initial App by Homebrew
### iTerm2
- [x] Installation

```
brew install iterm2 --cask
```

### Google IME
- [x] Installation

```
brew install google-japanese-ime --cask
```

### VS Code
- [x] Installation

```
brew install visual-studio-code --cask
```

<details><summary>Keyboard - Input Source</summary><div>
<img width="640" alt="input-source" src="https://user-images.githubusercontent.com/3072734/91958684-a203bd80-ed42-11ea-9b19-1137e496e298.png">
</div></details>

## Computer Name (Hostname)
System Preference - Sharing

<details><summary>Computer Name</summary><div>
<img width="" alt="input-source" src="https://user-images.githubusercontent.com/3072734/91960809-50a8fd80-ed45-11ea-9838-cdbc78137565.png">
</div></details>

```
sudo scutil --set HostName      shinyay # Common usage
sudo scutil --set LocalHostName shinyay # Bonjour
sudo scutil --set ComputerName  shinyay # Finder, friendly name
```

## Fish
### Fish Install
- [x] Installation

```
brew install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
```

Restart terminal

Confirm Shell
```
> echo $SHELL
/usr/local/bin/fish
```

### Fisher
A plugin manager for Fish (https://nicedoc.io/jorgebucaran/fisher)

- [x] Installation

```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

Installing jorgebucaran/fisher
           ~/.config/fish/functions/fisher.fish
```

```
fisher -v
fisher, version 4.3.0
```

### Fish Theme - bobthefish
- [x] Installation

- [oh-my-fish/theme-bobthefish](https://github.com/oh-my-fish/theme-bobthefish)

```
fisher install oh-my-fish/theme-bobthefish

git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf ./fonts
```

#### bobthefish Configuration
- [x] Configuration

```
vim ~/.config/fish/config.fish

set -g theme_display_git_master_branch yes
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_git_worktree_support no
set -g theme_use_abbreviated_branch_name no

set -g theme_display_vagrant no
set -g theme_display_docker_machine no
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_nix no
set -g theme_display_ruby no
set -g theme_display_nvm no
set -g theme_display_user ssh
set -g theme_display_hostname ssh
set -g theme_display_vi no
set -g theme_display_date yes
set -g theme_display_cmd_duration yes

set -g theme_title_display_process no
set -g theme_title_display_path yes
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path no

set -g theme_date_format "+%F %H:%M"
set -g theme_date_timezone Asia/Tokyo
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g theme_show_exit_status yes
set -g theme_display_jobs_verbose yes
set -g default_user your_normal_user
set -g theme_color_scheme loght
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1
set -g theme_newline_cursor yes
set -g theme_newline_prompt ''
```

#### ITerm 2 Font configuration
- [x] Configuration

- iTerm2 -> Preferences -> Profiles -> Text -> Font
  - Meslo LG L DZ for Powerline

## Fish Plugin
### Peco
- [x] Installation

By pushing ctrl + r, you can search shell history

- [oh-my-fish/plugin-peco](https://github.com/oh-my-fish/plugin-peco)

```
brew install peco
fisher install oh-my-fish/plugin-peco
abbr -a history peco_select_history
```
or
```
vim ~/.config/fish/config.fish

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
```

### fzf

Interactice command search

- [fzf.fish](https://github.com/PatrickF1/fzf.fish)

- [x] Installation fzf

```
brew install fzf
```


- [x] Installation bat
- [bat](https://github.com/sharkdp/bat)
cat clone with syntax highlight and Git integration

```
brew install bat
```

- [x] Installation fd
- [fd](https://github.com/sharkdp/fd)
find entries in your filesystem

```
brew install fd
```

- [x] Installation fzf
- [fzf](https://github.com/PatrickF1/fzf.fish)
interactive find 

```
fisher install PatrickF1/fzf.fish

echo "### fzf.fish" | tee -a ~/.config/fish/config.fish
echo "fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs" | tee -a ~/.config/fish/config.fish
echo "" | tee -a ~/.config/fish/config.fish
```

|Key bind|Description|
|--------|-----------|
|`Ctrl`+`r`|Command history|
|`Ctrl`+`v`|Environment variables|
|`Ctrl`+`Alt`+`f`|Recursive listing|
|`Ctrl`+`Alt`+`s`|`git status`|
|`Ctrl`+`Alt`+`l`|`git log`|

### z

- [x] Installation

By z, it tracks the directory you have visited

- [jethrokuan/z](https://github.com/jethrokuan/z)

```shell
fisher install jethrokuan/z
```

### fish-bd

- [x] Installation

By bd, you can quickly go back to a parent directory in your current working directory tree

- [0rax/fish-bd](https://github.com/0rax/fish-bd)

```shell
fisher install 0rax/fish-bd
```

### SDKMAN! for fish

- [x] Installation

Makes command sdk from SDKMAN! usable from fish, including auto-completion. Also adds binaries from installed SDKs to the PATH.

- [reitzig/sdkman-for-fish](https://github.com/reitzig/sdkman-for-fish)

```shell
fisher install reitzig/sdkman-for-fish@v1.4.0

sdk
You don't seem to have SDKMAN! installed. Install now? [y/N] y
```

### nvm.fish

Designed for Fish, this tool helps you manage multiple active versions of Node on a single local environment.

- [jorgebucaran/nvm.fish](https://github.com/jorgebucaran/nvm.fish)

```shell
fisher install jorgebucaran/nvm.fish
```

```shell
nvm -v
nvm, version 2.0.1
```

#### Install Node
```
nvm install latest
nvm current
```

#### Upgrade npm
```
npm install -g npm@7.5.4
```

## Fish Completion
- [completion list](https://github.com/fish-shell/fish-shell/tree/master/share/completions)
  - git

- [kubectl](https://github.com/evanlucas/fish-kubectl-completions)

```
# git
curl https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/git.fish > ~/.config/fish/completions/git.fish

# kubectl
curl https://raw.githubusercontent.com/evanlucas/fish-kubectl-completions/master/completions/kubectl.fish > ~/.config/fish/completions/kubectl.fish
```

## Git
- [x] Installation

Install Git via Homebrew instead of Apple Git

```
brew install git

/usr/local/bin/git --version
git version 2.33.1

git config --global init.defaultBranch main
```
### Alias
#### git status
- [x] Configuration

```
git config --global alias.st status
```

#### git log
- [x] Configuration

```
git config --global alias.plog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso"
git config --global alias.glog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=format:'%c' --all --graph"
```

#### commit count
- [x] Configuration

```
git config --global alias.count 'shortlog -e -s -n'
```

### Fetch
- [x] Configuration

Before fetching, remove any remote-tracking references that no longer exist on the remote.

```
git config --global fetch.prune true
```


## ITerm2
### Iterm2 Preferences
- [x] Configuration

- iTerm2 -> Preferences -> Profiles -> Text -> Font
  - Meslo LG L DZ for Powerline / Regurlar / 12

  or

  - Source Code Pro for Powerline

- [x] Configuration

- iTerm2 -> Preferences -> Profiles -> Window
  - Columns: 150
  - Rows 25
  - Screen: Screen with Cursor
  - Space: All spaces

- [x] Configuration

- iTerm2 > Preferences > General > Window
  - Native full screen windows: OFF

- [x] Configuration

- iTerm2 > Preferences > General > Appearance
  - Tab bar location: Bottom

- iTerm2 -> Preferences -> Profiles -> Colors
  - Color Presets -> Import
    - [iterm2-snazzy](https://github.com/sindresorhus/iterm2-snazzy)
    - [iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes)
      - Solarized Dark - Patched
      - Dracula
    - [iterm2-material-design](https://www.martinseeler.com/iterm2-material-design)
      - `curl -O https://cdn.jsdelivr.net/gh/MartinSeeler/iterm2-material-design/material-design-colors.itermcolors`
### Shell Integration
- [x] Configuration

- [Shell Integration](https://iterm2.com/documentation-shell-integration.html)
```
curl -L https://iterm2.com/shell_integration/fish -o ~/.iterm2_shell_integration.fish
source ~/.iterm2_shell_integration.(basename $SHELL)
```

- `cmd`+`shift`+`c`: Copy Mode
  - vim like copy : `v` select `y` yank

## MacOS System Preferences
### General
- [x] Configuration

- Sidebar icon size: `Small`

### Trackpad
#### Point & Click
- [x] Configuration

- Tap to click: `ON`
- Tracking speed: `Fast`

#### More Gestuers
- [x] Configuration

- Swipe between full-screen apps: `4 fingers`
- Mission Control: `4 fingers`
- App Expose: `4 fingers`

### Mouse
#### Point & Click
- [x] Configuration

- Secondary Click: `Click in right`
- Smart zoom: `ON`

#### More Gestuers
- [x] Configuration

- Swipe between pages: `1 finger`

### Dock
- [x] Configuration

- Size: `Small`
- Magnification: `ON`
- Show recent application in Dock

#### Battery
- [x] Configuration

- Show Percentage

### Accessibility - Speech
- [x] Configuration

- System Preferences > Speech
  - System Voice: Samantha
  - Speak selected text when the key is pressed: `ON`

## Finder
### View
- [x] Configuration

- Show Path Bar
- Show Status Bar

# 2. Tools
## VS Code
### Shell Integration
- `Command + Shift + P`
  - `Shell`

<details><summary>Shell Command: Install</summary><div>
<img width="" alt="vscode" src="https://user-images.githubusercontent.com/3072734/92596916-86b82580-f2e1-11ea-95d4-1f7f089246aa.png">
</div></details>

### Extensions
- Material Icon Theme
- Auto Rename Tag
- Auto Close Tag
- Bracket Pair Colorizer 2
- Indent Rainbow
- [Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)
- [Vetur](https://marketplace.visualstudio.com/items?itemName=octref.vetur)



## SDKMAN!
### Enable Beta Channel
```
sed -ie "s/sdkman_beta_channel=false/sdkman_beta_channel=true/g" ~/.sdkman/etc/config
```

### Java
- [x] Installation

- Liberica
  - 17.0.0.fx-librca

```
sdk install java
```

### Gradle
- [x] Installation

- 7.2

```
sdk install gradle
```

### Maven
- [x] Installation

- 3.8.3

```
sdk install maven
```

### Spring Boot CLI

- [x] Installation

- 2.6.0

```shell
sdk install springboot
```

### Maven Daemon

- [x] Installation

- https://github.com/apache/maven-mvnd
- 0.7.1

```shell
sdk install mvnd
```

### Flush
```
sdk flush broadcast
sdk flush archives
sdk flush temp
```

## npm
- [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)
  - `npm install -g npm-check-updates`

### Vue

```shell
npm install vue@next

npm ls
mac-setup@ /Users/shinyay/works/tools/mac-setup
└── vue@3.0.5
```

Vue CLI

```shell
npm install -g @vue/cli
```

#### Vue Devtools

- [vuejs/vue-devtools](https://github.com/vuejs/vue-devtools)

## Docker

- [x] Installation

- Download Docker installation image
  - [Docker Desktop](https://www.docker.com/get-started)

or

```shell
brew install --cask --appdir=$HOME/Applications docker
```

### Resources configuration

- [x] Configuration

- Memmory
  - Default: 2GB to 16 GB (at least 6 GB)
  - Default size causes out-of-memory error to build GrateVM Native image with Spring Build Native Image (Buildpacks)

<details><summary>Memory Allocation</summary><div>
<img width="" alt="memory-12g" src="https://user-images.githubusercontent.com/3072734/95179863-2d69e600-07fc-11eb-8892-46b5d4ce7ab5.png">
</div></details>

## Kubectl

- [x] Installation

```shell
brew install kubernetes-cli

kubectl version --client
Client Version: version.Info{Major:"1", Minor:"23", GitVersion:"v1.23.1", GitCommit:"86ec240af8cbd1b60bcc4c03c20da9b98005b92e", GitTreeState:"clean", BuildDate:"2021-12-16T11:33:37Z", GoVersion:"go1.17.5", Compiler:"gc", Platform:"darwin/amd64"}
```

## kind

- [x] Installation

```shell
brew install kind

kind version
kind v0.11.1 go1.16.4 darwin/amd64
```

## kustomize

- [x] Installation

```shell
brew install kustomize

kustomize version
{Version:kustomize/v4.4.1 GitCommit:b2d65ddc98e09187a8e38adc27c30bab078c1dbf BuildDate:2021-11-11T23:27:14Z GoOs:darwin GoArch:amd64}
```

## helm

```shell
brew install helm
```

## skaffold

```shell
brew install skaffold
```

## pack - Buildpack CLI

```shell
brew install buildpacks/tap/pack
```

## Dive

A tool for exploring a docker image, layer contents, and discovering ways to shrink the size of your Docker/OCI image.

- For Mac

```shell
brew install dive

dive <CONTAINER_IMAGE:TAG>
```

- For Docker

```shell
docker pull wagoodman/dive

docker run --rm -it \
      -v /var/run/docker.sock:/var/run/docker.sock \
      wagoodman/dive:latest <CONTAINER_IMAGE:TAG>
```

## emc - Enhanced JVM Meomry Calculator

```shell
curl -L https://github.com/wreulicke/emc/releases/download/v0.0.2/emc_0.0.2_darwin_amd64 -o /usr/local/bin/emc
chmod +x /usr/local/bin/emc
```

## Google Cloud

<details><summary>Google Cloud</summary><div>

### Google Cloud SDK

```shell script
brew cask install google-cloud-sdk
```

### Google Cloud SQL Proxy
```shell script
sudo gcloud components install cloud_sql_proxy
```

### kpt
- [GoogleContainerTools/kpt](https://github.com/GoogleContainerTools/kpt)

```
sudo gcloud components install kpt
```
or
```
brew tap GoogleContainerTools/kpt https://github.com/GoogleContainerTools/kpt.git
brew install kpt
```

</div></details>

## jq command

- [x] Installation

```
brew install jq
```

## watch command

- [x] Installation

```shell script
brew install watch
```

```shell script
echo '# watch command' >> ~/.config/fish/config.fish
echo 'set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths' >> ~/.config/fish/config.fish
echo 'set -gx LDFLAGS "-L/usr/local/opt/ncurses/lib"' >> ~/.config/fish/config.fish
echo 'set -gx CPPFLAGS "-I/usr/local/opt/ncurses/include"' >> ~/.config/fish/config.fish
```

## envsubst command
```
brew install gettext

which envsubst
/usr/local/bin/envsubst
```

## asciinema
- [x] Installation
### Installation
```
brew install asciinema
```

### Recording
```
asciinema rec demo.cast
```

### Playing
```
asciinema play demo.cast
```

### asciinema-edit
- [x] Installation

It can edit a asciinema cast.

- [asciinema-edit](https://github.com/cirocosta/asciinema-edit)

```shell
mkidr temp
curl -sSL -o temp/asciinema.tar.gz https://github.com/cirocosta/asciinema-edit/releases/download/0.0.6/asciinema-edit_0.0.6_darwin_amd64.tar.gz
cd temp && tar xzvf asciinema.tar.gz
mv asciinema-edit /usr/local/bin/
rm -fr temp
```

Usage
- delays between 200ms and 1s cut to 300ms
- delays between 1s and 2s cut to 1s
- any delays bigger than 2s, cut down to 2s
```shell
asciinema-edit quantize \
       --range 0.2,1 \
       --range 1,2 \
       --range 2 \
       ascii.cast > quantized.cast
```

### asciicast2gif
This cli converts asciinema movie to GIF animation

```
docker run --rm -v $PWD:/data asciinema/asciicast2gif -S 1 -t monokai demo.cast demo.gif
```

#### asciicast2gif options
```
-t <theme>        color theme, one of: asciinema, tango, solarized-dark, solarized-light, monokai (default: asciinema)
-s <speed>        animation speed (default: 1)
-S <scale>        image scale / pixel density (default: 2)
-w <columns>      clip terminal to specified number of columns (width)
-h <rows>         clip terminal to specified number of rows (height)
```

## ki - Kotlin Language Interactive Shell
```
brew install ki
```

## .NET 5
- [Download .NET](https://dotnet.microsoft.com/download/dotnet)
  - .NET 5.0 SDK (v5.0.301) - macOS x64 Installer
```
The following was installed at /usr/local/share/dotnet 
	•	.NET SDK 5.0.301
	•	.NET Runtime 5.0.7
	•	ASP.NET Core Runtime 5.0.7
```

```
which dotnet

/usr/local/share/dotnet/dotnet
```

## Zoom
```
brew install zoom
```
### Settings
#### Video

- [ ] Mirror my video
- [ ] 

#### Share Screen
- [x] Windoww size when screen sharing: Maintain current size

## Spotify
- [x] Installation

```
brew install spotify
```

## Alfred
- [x] Installation

```
brew install --cask alfred
```

## Notion
- [x] Installation

```
brew install --cask notion
```

## Chrome
### Extension
- [x] Installation
- [JSONView](https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc)


## JetBrains
### Toolbox App
- [x] Installation

https://www.jetbrains.com/toolbox-app/

- [x] Installation

- IntelliJ IDEA Ultimate

### IntelliJ IDEA Ultimate
#### Appearance & Behavior
##### Editor - General
- Mouse Control > Change font size with Command+Mouse Wheel: On
- On Save > Ensure every saved file ends with a line break: On

##### Editor - Appearance
- Show method separators: On
- Show whitespaces: On

##### Editor - Code Style
- line separator: `Unix and macOS (\n)`

##### Editor - File Encodings
- Default encoding for properties files: `UTF-8`
- Transparent native-to-ascii conversion: On

#### Plugin
- GitHub Copilot
https://plugins.jetbrains.com/plugin/17718-github-copilot

![login](https://user-images.githubusercontent.com/3072734/139187783-5917f666-4df4-4275-a1a3-a35ccfd886f1.png)


## App Store
### Magnet
- [x] Installation

### Monosnap
- [x] Installation

## Atem Mini Pro ISO
### Atem Switcher Update
- https://www.blackmagicdesign.com/jp/support/family/atem-live-production-switchers
  - 8.6.3 (as of Oct-23)

#### Atem Setup
Farmware update

<details><summary>Farmware update</summary><div>
<img width="" alt="vscode" src="https://user-images.githubusercontent.com/3072734/139623731-cee49956-8cac-411e-9874-1b2279b4ee03.png">
</div></details>

## YAMAHA AG03
### AG DEP Controller
- [Download](https://jp.yamaha.com/products/contents/music_production/webcasting_mixer/software/ag_dsp.html)
  - AG DSP Controller V1.2.0 Mac macOS 11(Intel/Apple M1), 10.15-OS X 10.7 (As of 21.Nov.01)

## Stream Deck

- [Stream Deck 5](https://www.elgato.com/en/downloads)

### Hotkey

- Speech to Text
  - `Option` + `Esc`

### Website

- GitHub
- Twitter
- Facebook
- Instagram
- Linkedin
- Youtube
- Gmail

### Companion

Bitfocus Companion enables the reasonably priced Elgato Streamdeck to be a professional shotbox surface for an increasing amount of different presentation switchers, video playback software and broadcast equipment.

Need to install 2 components for Mac client and Stream Deck plugin.

- [Bitfocus Companion](https://bitfocus.io/companion/)
  - ![Companion Client](https://user-images.githubusercontent.com/3072734/147797896-4cbbc6c4-4bc6-4735-9513-a75f1d7ac966.png)
    - `Version: 2.1.3`
    - `Updated: 2021-Apr-19`

Install from Stream Deck Store

![StreamDeckStore](https://user-images.githubusercontent.com/3072734/147622931-555bca0b-f4bd-4fd2-b1c5-d0767e161ea9.png)

Install from Stream Deck Store

![StreamDeckStore](https://user-images.githubusercontent.com/3072734/147622931-555bca0b-f4bd-4fd2-b1c5-d0767e161ea9.png)

### Icons

- [Iconfinder](https://www.iconfinder.com/)
- [flaticon](https://www.flaticon.com/)

## FFmpeg

```shell
brew install ffmpeg
```

### Movie to GIF

```shell
ffmpeg -i <input>.mov -vf scale=720:-1 -r 10 <output>.gif
```

2x speed

```shell
ffmpeg -i <input>.mov -vf scale=720:-1,setpts=PTS/2.0 -af atempo=2.0 -r 10 <output>.gif
```
