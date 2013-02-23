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

  
For the moment we have two more repos symbolicdata@symbolicdata.org:git/symbolicdata and <https://github.com/hg-graebe/symbolicdata> with branches 'old-master', 'developer' and 'master' to get closer to our git development model. -- HGG, 2013-02-20

So clone the public Repo

` git clone `[`https://github.com/symbolicdata/symbolicdata`](https://github.com/symbolicdata/symbolicdata)

and switch between branches with 'git checkout'. Project members (with proper SSH access) can freely push their changes to the repo symbolicdata@symbolicdata.org:git/symbolicdata that will be synced from time to time with the public Repo.

#### What's about a development model?

We follow the git-branch development model <http://nvie.com/posts/a-successful-git-branching-model> with dedicated branches 'master', 'developer' and naming conventions for pre-release and feature branches.

  
To get closer to that model I started a branch 'developer' from 'master'. A first stable release within the master branch is yet ahead, the 'old-master' branch should be closed in future. -- HGG, 2013-02-20

**The Integration-Manager-Workflow Model**

<http://git-scm.com/book/en/Distributed-Git-Distributed-Workflows#Integration-Manager-Workflow>

Let abbreviate the involved repositories GH-HGG, GH-RH, LOC-HGG, LOC-RH: These are the repositories at github (GH) and local (LOC) repositories for the developers HGG and RH. Each one has only write access to his own repos. Everyone has read-access to the github repo, but not to the local repository of the other person.

`HGG$ git clone git@github.com:hg-graebe/symbolicdata.git`
`HGG$ git remote add ralf `[`git://github.com/hemmecke/symbolicdata.git`](git://github.com/hemmecke/symbolicdata.git)
`HGG$ git fetch ralf`
`HGG$ git merge ralf/master   # or maybe "git rebase ralf/master"`
`RH$ git clone git@github.com:hemmecke/symbolicdata.git`
`RH$ git remote add hgg `[`git://github.com/hg-graebe/symbolicdata.git`](git://github.com/hg-graebe/symbolicdata.git)
`RH$ git fetch hgg`
`RH$ git merge hgg/master   # or maybe "git rebase hgg/master"`
`HGG$ edit, edit, edit`
`HGG$ git add ...`
`HGG$ git commit`
`HGG$ push origin master # this pushes to github`

`RH$ edit edit edit`
`RH$ git add ...`
`RH$ git commit`
`RH$ git fetch hgg`
`RH$ git rebase hgg/master`
`   # this will put my previous commit on top of hgg/master.`

`HGG$ git pull ralf master`
`   # merges in the latest changes from ralf`

I hope that pretty much explains how the patches flow. RH counts as the Integration manager of his blessed github repo git@github.com:hemmecke/symbolicdata.git and HGG acts as the Integration manager of his blessed repo git@github.com:hg-graebe/symbolicdata.git.

Only the Integration manager needs write access to the blessed repo.

#### What's about commit messages?

In the git world there is a convention of how commit messages should be structured.

-   <http://doc.norang.ca/git-howto.html#sec-2>
-   <http://www.mediawiki.org/wiki/Git/Commit_message_guidelines>

#### Why git?

Some remarks translated from a mail from Ralf Hemmecke:

Due to a well elaborated concept git allows for flexible management also of earlier commits. Git takes the content of a file (blob), computes the sha1, adds the length of the blob, zips that and stores it with the computed sha1 as file name. So it stores complete files and not increments as other VCS. Only "git gc" (it is called automatically after a while) tries to collect garbage.

  
From "git help gc": Runs a number of housekeeping tasks within the current repository, such as compressing file revisions (to reduce disk space and increase performance) and removing unreachable objects which may have been created from prior invocations of git add.

Due to the sha1 signature one has all the time the assurance that all data are intact. And if you are in doubt you can start "git fsck"

  
git-fsck - Verifies the connectivity and validity of the objects in the database


