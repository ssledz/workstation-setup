Windows Linux Subsystem
=======================

## installing apps

#### must have apps
```
sudo apt-get install \
  zip \
  git \
  exuberant-ctags \
  mc \
  stow \
  apg \
  rxvt-unicode \
  tmux \
  aptitude \
  rsync \
  openssh-client \
  libssl-dev \
  libreadline-dev \
  zlib1g-dev \
  build-essential \
  netcat \
  tree \
  ranger \
  parallel \
  jq \
  htop \
  curl \
  wget \
  zsh \
  zsh-doc \
  cmake \
  python3.8-dev
```

### optional apps
```
sudo apt-get install \ 
  gitg \
  meld \
  figlet \
  keepassxc \
  xclip \
  python-pygments \
  apache2-utils \
  dia \
  curl \
  policykit-1-gnome \
  tig \
  urlview 

```

### media apps
```
sudo apt-get install \
  cmus \
  qnapi \
  evince \
  mplayer \
  smplayer \
  alsa-utils \
  pavucontrol \
  imagemagick \
  calibre
```

## installing dotfiles
```
cd git
git clone --recursive git@github.com:ssledz/dotfiles.git
cd ~
rm .bashrc .bash_logout
cd git/dotfiles
./restow.sh
```

## swithcin to zsh
```
chsh -s /usr/bin/zsh ssledz
```

## installing java
```
sudo apt-get install openjdk-11-jdk openjdk-11-dbg
```

## installing jenv
```
git clone https://github.com/gcuisinier/jenv.git ~/.jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
jenv add /usr/lib/jvm/java-11-openjdk-amd64/
jenv global 11
jenv rehash
```

## configuring mc
```
sudo apt-get install mc
mkdir -p ~/.mc/lib
git clone https://github.com/iwfmp/mc-solarized-skin.git ~/.mc/lib/mc-solarized-skin
```

## configure locale
```
apt-get install locales
dpkg-reconfigure locales
```
or
```
sudo locale-gen pl_PL
sudo locale-gen pl_PL.UTF-8
```

## update locate db
```
sudo updatedb --localpaths='/bin /home /etc /usr /opt /var'
```

## install sdkman & tools
```
curl -s "https://get.sdkman.io" | bash
sdk install scala 2.13.4
sdk install maven 3.6.3
sdk install sbt 1.4.6
sdk install ant 1.10.8
sdk install gradle 6.8.1
sdk install groovy 3.0.7
```

## setup solarized dark for windows terminal
profile
```
{
  // Make changes here to the powershell.exe profile.
  "guid": "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
  "name": "Windows PowerShell",
  "commandline": "powershell.exe",
  "hidden": false,
  "colorScheme" : "solarized-dark"
}
```
schemas
```
"schemes": [
  {
    "name": "solarized-dark",
    "background": "#002B36",
    "brightBlack": "#073642",
    //"brightBlack": "#0f6780",
    "brightBlue": "#268BD2",
    "black": "#002B36",
    "blue": "#839496",
    "cyan": "#93A1A1",
    "green": "#586E75",
    "purple": "#6C71C4",
    "red": "#CB4B16",
    "white": "#FDF6E3",
    "yellow": "#657B83",
    "brightCyan": "#2AA198",
    "foreground": "#839496",
    "brightGreen": "#859900",
    "brightPurple": "#D33682",
    "brightRed": "#DC322F",
    "brightWhite": "#EEE8D5",
    "brightYellow": "#B58900"
  }
]
```
* [Solarized schemes shipped in Terminal Preview are incorrect #1509](https://github.com/microsoft/terminal/issues/1509)
* [Custom Terminal guide](https://docs.microsoft.com/en-us/windows/terminal/custom-terminal-gallery/custom-schemes)
