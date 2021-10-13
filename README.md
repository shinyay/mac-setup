# MacBook Pro (16-inch 2019)
---
# 1. Initial Setup
## Homebrew
- [x] Installation

```
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
### Authority for Homebrew

- [ ] (If you need it)
```
$ sudo chown -R $(whoami):admin /usr/local/*
$ sudo chmod -R g+w /usr/local/*
```

## SSH Key for GitHub
### Git Global Configuration
- [x] Configuration

```
$ git config --global user.name "shinyay" && \
git config --global user.email "" && \
git config --global core.quotepath false && \
git config --global core.safecrlf true && \
git config --global core.autocrlf false && \
git config --global core.editor 'vim -c "set fenc=utf-8"' && \
git config --global color.diff auto && \
git config --global color.status auto && \
git config --global color.branch auto
```

### ssh-keygen
- [x] Generate SSH Key pair

```
$ ssh-keygen -t ed25519 -C 'mail address for github'
```

### SSH Keys on GitHub
- [x] Add a public key on the following site:

- [https://github.com/settings/keys](https://github.com/settings/keys)

## Initial App by Homebrew
### iTerm2
- [x] Installation

```
$ brew install iterm2 --cask
```

### Google IME
- [x] Installation

```
$ brew install google-japanese-ime --cask
```

### VS Code
- [x] Installation

```
$ brew install visual-studio-code --cask
```

<details><summary>Keyboard - Input Source</summary><div>
<img width="640" alt="input-source" src="https://user-images.githubusercontent.com/3072734/91958684-a203bd80-ed42-11ea-9b19-1137e496e298.png">
</div></details>

## Computer Name (Hostname)
System Preference - Sharing

<details><summary>Computer Name</summary><div>
<img width="" alt="input-source" src="https://user-images.githubusercontent.com/3072734/91960809-50a8fd80-ed45-11ea-9838-cdbc78137565.png">
</div></details>


## Fish
### Fish Install
- [x] Installation

```
$ brew install fish
$ echo /usr/local/bin/fish | sudo tee -a /etc/shells
$ chsh -s /usr/local/bin/fish
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
$ curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

Installing jorgebucaran/fisher
           ~/.config/fish/functions/fisher.fish
```

```
$ fisher -v
fisher, version 4.3.0
```

### Fish Theme - bobthefish
- [x] Installation

- [oh-my-fish/theme-bobthefish](https://github.com/oh-my-fish/theme-bobthefish)

```
$ fisher install oh-my-fish/theme-bobthefish

$ git clone https://github.com/powerline/fonts.git
$ ./fonts/install.sh
$ rm -rf ./fonts
```

#### bobthefish Configuration
- [x] Configuration

```
$ vim ~/.config/fish/config.fish

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
set -g theme_newline_prompt '$ '
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
$ brew install peco
$ fisher install oh-my-fish/plugin-peco
$ abbr -a history peco_select_history
```
or
```
$ vim ~/.config/fish/config.fish

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end
```

### fzf

Interactice command search

- [fzf.fish](https://github.com/PatrickF1/fzf.fish)

- [x] Installation fzf

```
$ brew install fzf
```


- [x] Installation bat
- [bat](https://github.com/sharkdp/bat)
cat clone with syntax highlight and Git integration

```
$ brew install bat
```

- [x] Installation fd
- [fd](https://github.com/sharkdp/fd)
find entries in your filesystem

```
$ brew install fd
```

- [x] Installation fzf
- [fzf](https://github.com/PatrickF1/fzf.fish)
interactive find 

```
$ fisher install PatrickF1/fzf.fish

$ echo "### fzf.fish" | tee -a ~/.config/fish/config.fish
$ echo "fzf_configure_bindings --directory=\cf --git_log=\cl --git_status=\cs" | tee -a ~/.config/fish/config.fish
$ echo "" | tee -a ~/.config/fish/config.fish
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

```
$ fisher install jethrokuan/z
```

### fish-bd
- [x] Installation

By bd, you can quickly go back to a parent directory in your current working directory tree

- [0rax/fish-bd](https://github.com/0rax/fish-bd)

```
$ fisher install 0rax/fish-bd
```

### SDKMAN! for fish
- [x] Installation

Makes command sdk from SDKMAN! usable from fish, including auto-completion. Also adds binaries from installed SDKs to the PATH.

- [reitzig/sdkman-for-fish](https://github.com/reitzig/sdkman-for-fish)

```
$ fisher install reitzig/sdkman-for-fish@v1.4.0

$ sdk
You don't seem to have SDKMAN! installed. Install now? [y/N] y
```

### nvm.fish
Designed for Fish, this tool helps you manage multiple active versions of Node on a single local environment.

- [jorgebucaran/nvm.fish](https://github.com/jorgebucaran/nvm.fish)

```
$ fisher install jorgebucaran/nvm.fish
```

```
$ nvm -v
nvm, version 2.0.1
```

#### Install Node
```
$ nvm install latest
$ nvm current
```

#### Upgrade npm
```
$ npm install -g npm@7.5.4
```

## Fish Completion
- [completion list](https://github.com/fish-shell/fish-shell/tree/master/share/completions)
  - git

- [kubectl](https://github.com/evanlucas/fish-kubectl-completions)

```
# git
$ curl https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/git.fish > ~/.config/fish/completions/git.fish

# kubectl
$ curl https://raw.githubusercontent.com/evanlucas/fish-kubectl-completions/master/completions/kubectl.fish > ~/.config/fish/completions/kubectl.fish
```

## Git
### Alias
#### git status
- [x] Configuration

```
$ git config --global alias.st status
```

#### git log
- [x] Configuration

```
$ git config --global alias.plog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=iso"
$ git config --global alias.glog "log --pretty='format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]' --date=format:'%c' --all --graph"
```

#### commit count
- [x] Configuration

```
$ git config --global alias.count 'shortlog -e -s -n'
```

### Fetch
- [x] Configuration

Before fetching, remove any remote-tracking references that no longer exist on the remote.

```
$ git config --global fetch.prune true
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
  - Columns: 120
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
$ curl -L https://iterm2.com/shell_integration/fish -o ~/.iterm2_shell_integration.fish
$ source ~/.iterm2_shell_integration.(basename $SHELL)
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
$ sed -ie "s/sdkman_beta_channel=false/sdkman_beta_channel=true/g" ~/.sdkman/etc/config
```

### Java
- AdoptOpenJDK
  - 16.0.1.hs
  - 14.0.2.hs
  - 11.0.8.hs

```
$ sdk install java
```

### Gradle
- 7.1
- 6.6.1

```
$ sdk install gradle
```

### Maven
- 3.8.1
- 3.6.3

```
$ sdk install maven
```

### Flush
```
$ sdk flush broadcast
$ sdk flush archives
$ sdk flush temp
```

## npm
- [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)
  - `npm install -g npm-check-updates`

### Vue
```
$ npm install vue@next

$ npm ls
mac-setup@ /Users/shinyay/works/tools/mac-setup
└── vue@3.0.5
```

Vue CLI
```
$ npm install -g @vue/cli
```

#### Vue Devtools
- [vuejs/vue-devtools](https://github.com/vuejs/vue-devtools)

## Docker
- Download Docker installation image
  - [Docker Desktop](https://www.docker.com/get-started)

### Resources configuration
- Memmory
  - Default: 2GB to 12 GB (at least 6 GB)
  - Default size causes out-of-memory error to build GrateVM Native image with Spring Build Native Image (Buildpacks)

<details><summary>Memory Allocation</summary><div>
<img width="" alt="memory-12g" src="https://user-images.githubusercontent.com/3072734/95179863-2d69e600-07fc-11eb-8892-46b5d4ce7ab5.png">
</div></details>


## pack - Buildpack CLI
```
$ brew install buildpacks/tap/pack
```

## Dive
A tool for exploring a docker image, layer contents, and discovering ways to shrink the size of your Docker/OCI image.

- For Mac
```
$ brew install dive

$ dive <CONTAINER_IMAGE:TAG>
```

- For Docker
```
$ docker pull wagoodman/dive

$ docker run --rm -it \
      -v /var/run/docker.sock:/var/run/docker.sock \
      wagoodman/dive:latest <CONTAINER_IMAGE:TAG>
```

## emc - Enhanced JVM Meomry Calculator

```
$ curl -L https://github.com/wreulicke/emc/releases/download/v0.0.2/emc_0.0.2_darwin_amd64 -o /usr/local/bin/emc
$ chmod +x /usr/local/bin/emc
```

## Google Cloud SDK
```shell script
$ brew cask install google-cloud-sdk
```
```
$ gcloud components list

Your current Cloud SDK version is: 308.0.0
The latest available version is: 311.0.0

┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                   Components                                                  │
├──────────────────┬──────────────────────────────────────────────────────┬──────────────────────────┬──────────┤
│      Status      │                         Name                         │            ID            │   Size   │
├──────────────────┼──────────────────────────────────────────────────────┼──────────────────────────┼──────────┤
│ Update Available │ Cloud SDK Core Libraries                             │ core                     │ 15.9 MiB │
│ Not Installed    │ App Engine Go Extensions                             │ app-engine-go            │  4.8 MiB │
│ Not Installed    │ Appctl                                               │ appctl                   │ 18.5 MiB │
│ Not Installed    │ Cloud Bigtable Command Line Tool                     │ cbt                      │  7.6 MiB │
│ Not Installed    │ Cloud Bigtable Emulator                              │ bigtable                 │  6.6 MiB │
│ Not Installed    │ Cloud Datalab Command Line Tool                      │ datalab                  │  < 1 MiB │
│ Not Installed    │ Cloud Datastore Emulator                             │ cloud-datastore-emulator │ 18.4 MiB │
│ Not Installed    │ Cloud Firestore Emulator                             │ cloud-firestore-emulator │ 41.0 MiB │
│ Not Installed    │ Cloud Pub/Sub Emulator                               │ pubsub-emulator          │ 34.9 MiB │
│ Not Installed    │ Emulator Reverse Proxy                               │ emulator-reverse-proxy   │ 14.5 MiB │
│ Not Installed    │ Google Cloud Build Local Builder                     │ cloud-build-local        │  5.9 MiB │
│ Not Installed    │ Google Container Registry's Docker credential helper │ docker-credential-gcr    │  1.8 MiB │
│ Not Installed    │ Kind                                                 │ kind                     │  4.4 MiB │
│ Not Installed    │ Kustomize                                            │ kustomize                │ 22.8 MiB │
│ Not Installed    │ Minikube                                             │ minikube                 │ 23.9 MiB │
│ Not Installed    │ Nomos CLI                                            │ nomos                    │ 17.6 MiB │
│ Not Installed    │ Skaffold                                             │ skaffold                 │ 15.3 MiB │
│ Not Installed    │ anthos-auth                                          │ anthos-auth              │ 15.9 MiB │
│ Not Installed    │ gcloud app Java Extensions                           │ app-engine-java          │ 59.5 MiB │
│ Not Installed    │ gcloud app PHP Extensions                            │ app-engine-php           │ 21.9 MiB │
│ Not Installed    │ gcloud app Python Extensions                         │ app-engine-python        │  6.1 MiB │
│ Not Installed    │ gcloud app Python Extensions (Extra Libraries)       │ app-engine-python-extras │ 27.1 MiB │
│ Not Installed    │ kpt                                                  │ kpt                      │ 11.7 MiB │
│ Not Installed    │ kubectl                                              │ kubectl                  │  < 1 MiB │
│ Installed        │ BigQuery Command Line Tool                           │ bq                       │  < 1 MiB │
│ Installed        │ Cloud SQL Proxy                                      │ cloud_sql_proxy          │  7.3 MiB │
│ Installed        │ Cloud Storage Command Line Tool                      │ gsutil                   │  3.5 MiB │
│ Installed        │ gcloud Alpha Commands                                │ alpha                    │  < 1 MiB │
│ Installed        │ gcloud Beta Commands                                 │ beta                     │  < 1 MiB │
└──────────────────┴──────────────────────────────────────────────────────┴──────────────────────────┴──────────┘
To install or remove components at your current SDK version [308.0.0], run:
  $ gcloud components install COMPONENT_ID
  $ gcloud components remove COMPONENT_ID

To update your SDK installation to the latest version [311.0.0], run:
  $ gcloud components update
```

### Google Cloud SQL Proxy
```shell script
$ sudo gcloud components install cloud_sql_proxy
```

### kubectl
```shell
$ sudo gcloud components install kubectl
```

### kpt
- [GoogleContainerTools/kpt](https://github.com/GoogleContainerTools/kpt)

```
$ sudo gcloud components install kpt
```
or
```
$ brew tap GoogleContainerTools/kpt https://github.com/GoogleContainerTools/kpt.git
$ brew install kpt
```


## MySQL Client
```shell script
$ brew install mysql-client
$ echo 'set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths' >> ~/.config/fish/config.fish
$ echo 'set -gx LDFLAGS "-L/usr/local/opt/mysql-client/lib"' >> ~/.config/fish/config.fish
$ echo 'set -gx CPPFLAGS "-I/usr/local/opt/mysql-client/include"' >> ~/.config/fish/config.fish
```

## watch command
```shell script
$ brew install watch
```

```shell script
$ echo '# watch command' >> ~/.config/fish/config.fish
$ echo 'set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths' >> ~/.config/fish/config.fish
$ echo 'set -gx LDFLAGS "-L/usr/local/opt/ncurses/lib"' >> ~/.config/fish/config.fish
$ echo 'set -gx CPPFLAGS "-I/usr/local/opt/ncurses/include"' >> ~/.config/fish/config.fish
```

## envsubst command
```
$ brew install gettext

$ which envsubst
/usr/local/bin/envsubst
```

## asciinema
### Installation
```
$ brew install asciinema
```

### Recording
```
$ asciinema rec demo.cast
```

### Playing
```
$ asciinema play demo.cast
```

### asciicast2gif
This cli converts asciinema movie to GIF animation

```
$ docker run --rm -v $PWD:/data asciinema/asciicast2gif demo.cast demo.gif
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
$ brew install ki
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
$ which dotnet

/usr/local/share/dotnet/dotnet
```

## Zoom
```
$ brew install zoom
```
