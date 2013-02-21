---
layout: default
title: Using.Git
---

### More about the way we organize our Repos

These notes are yet provisional, since we did not yet decide all point in a final way. Here are the arguments "How to use Git" and "How to organize the Repo" collected so far.

#### Which Repos and where to find them

Ralf Hemmecke created and manages the *symbolicdata* git account at github running

-   the public Repo *symbolicdata* with two branches 'master' and 'old-master'
-   the public Repo *symbolicdata.wiki* with the ([gollum](https://github.com/github/gollum#readme) based) wiki that comes with each github-Repo for free.

The pre v.3 sources are copied to 'old-master' and will go step by step to 'master'.

  
For the moment we have two more repos symbolicdata@symbolicdata.org:git/symbolicdata and <https://github.com/hg-graebe/symbolicdata> with branches 'old-master', 'developer' and 'master' to get closer to our git development model.

So clone the public Repo

` git clone `[`https://github.com/symbolicdata/symbolicdata`](https://github.com/symbolicdata/symbolicdata)

and you can switch between both branches with 'git checkout'. Project members (with proper SSH access) can freely push their changes to the repo symbolicdata@symbolicdata.org:git/symbolicdata that will be synced from time to time with the public Repo.

#### What's about a development model?

We follow the git-branch development model <http://nvie.com/posts/a-successful-git-branching-model> with dedicated branches 'master', 'developer' and naming conventions for pre-release and feature branches.

  
To get closer to that model I started a branch 'developer' from 'master'. A first stable release within the master branch is yet ahead, the 'old-master' branch should be closed in future. -- HGG, 2013-02-20

#### What's about commit messages?

In the git world there is a convention of how commit messages should be structured.

-   <http://doc.norang.ca/git-howto.html#sec-2>
-   <http://www.mediawiki.org/wiki/Git/Commit_message_guidelines>

