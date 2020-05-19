# Configuring Vim To development

Let's do that.

## Getting Started

Clone this repository on your root

### Installing

```
$ rm -R .vim
```

```
$ mv vim .vim
```

```
$ mv .vim/.vimrc .
```

Install ctags

```
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

```
brew install ctags-exuberant
```

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

tag
