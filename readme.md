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

## Shortcuts
Ctrl + C and...

```
Ctrl + ] go to Component/Function/Class from the current cursor
```

```
Ctrl + O back from Component/Function/Class to the last cursor
```

```
gg=G ident all file
```

```
/somestring  find string on the files opened
```

```
*  over some text or character will go to the next ocurrence
```

```
:50 go to line
```

```
:1:50d remove/cut content from line 1 until 50
```

```
:1:50 co . copy content from line 1 until 50 and paste on current cursor
```

```
:vsplit  split vertically
```

```
:split  split horizontally
```

```
:noh  clear search buffer
```

```
:CtrlSF 'sometext' search in current folder/project
```

```
w  reached the first character in the next word
```

```
b  reached the first character in the previous word
```

```
$  reached the end of the line
```

```
0  reached the start of the line
```

```
I  reached the first character in the line
```

```
\cn  comment the current line
```

```
5\cn  comments 5 lines from the cursor
```

```
\cu  uncomment the current line
```

```
5\cu  uncomments 5 lines from the cursor
```

Creating file/folders on Nerdtree

Set the cursor on the place you want to add/move/remove a file/folder and hit M


That's all folks!