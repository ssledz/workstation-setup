Windows Linux Subsystem
=======================

## installing apps

#### must have apps
```
sudo apt-get install \ 
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
