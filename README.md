# Guide to set up bare repository for tracking dotfiles
https://www.atlassian.com/git/tutorials/dotfiles

## Steps for setting up first time

```bash
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

* The first line creates a folder ~/.dotfiles which is a Git bare repository that will track our files.

* Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository.

* We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type config status and other commands later, files you are not interested in tracking will not show up as untracked.

* Also you can add the alias definition by hand to your .zshrc or use the the fourth line provided for convenience.

After you've executed the setup any file within the $HOME folder can be versioned with normal commands, replacing git with your newly created config alias, like:

```bash
config status
config add .zshrc
config commit -m "Add zshrc"
config push
```

## Install your dotfiles onto a new system
* Prior to the installation make sure you have committed the alias to your .zshrc:

```bash
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

* And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:

```bash
echo ".dotfiles" >> .gitignore
```

* Now clone your dotfiles into a bare repository in a "dot" folder of your $HOME:

```bash
git clone --bare <git-repo-url> $HOME/.dotfiles
```

* Define the alias in the current shell scope:

```bash
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

* Checkout the actual content from the bare repository to your $HOME:

```bash
config checkout
```

* The step above might fail with a message like:

```bash
error: The following untracked working tree files would be overwritten by checkout:
    .zshrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

This is because your $HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care. I provide you with a possible rough shortcut to move all the offending files automatically to a backup folder:

```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

* Re-run the check out if you had problems:

```bash
config checkout
```

* Set the flag showUntrackedFiles to no on this specific (local) repository:

```bash
config config --local status.showUntrackedFiles no
```

* You're done, from now on you can now type config commands to add and update your dotfiles:

```bash
config status
config add .zshrc
config commit -m "Add zshrc"
config push
```

Again as a shortcut not to have to remember all these steps on any new machine you want to setup, you can create a simple script.
- [ ] Create install script
