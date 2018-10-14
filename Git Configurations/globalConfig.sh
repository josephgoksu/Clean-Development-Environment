#!/bin/bash

######################
# INITIAL SETUP
######################

# First config you have to do is to add your name and email to git
git config --global user.name "Yusuf E. Goksu"
git config --global user.email me@yusufgoksu.com

git config --global commit.gpgsign true
git config --global core.editor nano

######################
# ALIASES
######################

# Shortcut for most used command as checkout
git config --global alias.co "checkout"

# Shortcut for most used command as status
git config --global alias.s "status -uall"

# Shows all branches including local and remote ones
git config --global alias.b "branch -av"

# Shows all existing tags
git config --global alias.t "tag -l"

# Shows remote name - url mapping for fetch and push
git config --global alias.r "remote -v"

# Displays commit graph is a nice colored view for all branches
git config --global alias.la "log --branches --remotes --tags --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Displays commit graph is a nice colored view for just the current branch
# Use "-N" for displaying the last N commits
git config --global alias.lb "log --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Displays commit graph is a nice colored view for all branches including stashes
# Use "-N" for displaying the last N commits
git config --global alias.las "log --graph --all --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

######################
# LOG
######################

# Print out the ref names of any commits that are shown. The ref name prefixes refs/heads/, refs/tags/ and refs/remotes/ will be printed.
git config --global log.decorate "full"

# Shows timestamps in ISO 8601 format: http://en.wikipedia.org/wiki/ISO_8601
git config --global log.date "iso"

######################
# COLOR
######################

# Prints all outputs in color whenever possible
git config --global color.diff "auto"
git config --global color.status "auto"
git config --global color.branch "auto"
git config --global color.interactive "auto"
git config --global color.ui "auto"