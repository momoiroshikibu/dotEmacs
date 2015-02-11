# dotFiles

# Requirements
- Mac OS X

  It may work on Linux.

- Emacs

  (>= 24.4)

- Cask

  `$ brew install cask`
  
## Getting Started

0. Clone repository
```shell
$ cd ~/.emacs.d
$ git clone https://github.com/momoiroshikibu/dotEmacs.git
```

0. Install dependent packages
```shell
$ cask install
```

0. Make directories for backups
```shell
$ mkdir ~/.emacs.d/.auto-save-list
$ mkdir ~/.emacs.d/.backups
```

0. Make directories for caches
```shell
$ mkdir -p ~/.emacs.d/.cache/recentf
$ mkdir -p ~/.emacs.d/.cache/savehist
```

0. Make directory for ~~junk~~ treasure files
```shell
$ mkdir ~/Documents/stashes
```