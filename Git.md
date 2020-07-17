---
title: "Git"
---
# Git

Git is a fast distributed version control system originally developed by Linus Torvalds for the Linux Kernel.

## Tags
List tags with `git tag`.

Release versions need to use annotated tags with `git tag -a ....`, only use non-annotated tags for personal use.

Push tags upstream using `git push --tags`

To push commits and tags on one command use `git push --follow-tags`

### What version am I building
Sometimes you want to know at build time the version of the source code you are building, e.g. so you can add the version to the executable.  Git describe is your friend here, it reports the last tag of the current branch with optional commits since the tag, e.g.
```
C:\> git describe
v0.3.6-3-gd010c1e
```
Which says `3` commits after `v0.3.6`, with SHA1 `gd010c1e`

## Remembering merge conflict resolution

Git supports remembering how you previously resolved merge conflicts via the [rerere](https://git-scm.com/blog/2010/03/08/rerere.html) setting and command.