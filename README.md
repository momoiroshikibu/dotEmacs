# dotFiles

# Requirements
- Mac OS X

    It may work on Linux.

- Emacs

    (>= 24.4)

- Cask

        $ brew install cask

## Getting Started

1. Clone repository

        $ cd ~/.emacs.d
        $ git clone https://github.com/momoiroshikibu/dotEmacs.git

2. Install dependent packages

        $ cask install

3. Make directories for backups

        $ mkdir ~/.emacs.d/.auto-save-list
        $ mkdir ~/.emacs.d/.backups

4. Make directories for caches

        $ mkdir -p ~/.emacs.d/.cache/recentf
        $ mkdir -p ~/.emacs.d/.cache/savehist

5. Make directory for ~~junk~~ treasure files

        $ mkdir ~/Documents/stashes
