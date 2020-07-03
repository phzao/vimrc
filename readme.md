# Configuring Vim To development

Let's do that.

## Getting Started

Clone this repository on your root, rename it, install PlugInstall, ctags and ready.

### Installing

```
$ git clone https://github.com/phzao/vimrc.git
```

```
$ rm -R .vim .vimrc
```

```
$ mv vimrc .vim
```

```
$ mv .vim/.vimrc .
```

### Starting
Open Vim, then Ctrl + c and type

```
:PlugInstall
```

That will install all plugins

### Install ctags [for mac users]

```
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

```
brew install ctags-exuberant
```


### Install ctags [for others linux]

I don't try this, only copy fron askubuntu.com:


`````
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh 
./configure
make
sudo make install
`````

Or  on ubuntu distro, 19.04:

``````
sudo apt install universal-ctags
``````

or

`````
sudo snap install universal-ctags
`````

### Install search on folder [for mac users]

```
brew install the_silver_searcher
```

To anothers Linux please go to https://github.com/ggreer/the_silver_searcher for more details.

## Add alias *optional

If you use oh-my-zsh add to your .zshrc:

```
alias ctagJS="ctags -R --exclude=.json --exclude=public --exclude=bower_components --exclude=.git --exclude=node_modules --exclude=test"
alias ctagPHP="ctags -R --exclude=.json  --exclude=.git --exclude=var --exclude=vendor --exclude=tests --exclude=bin"
```

Let's test this, enter on a js os php project folder and

```
$ ctagJS
```

don't forget of add on .gitignore the folder:

```
tag
```


That's all folks!