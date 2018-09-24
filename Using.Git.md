---
layout: default
title: Using.Git
---

### More about the way we organize our Repos

#### About the new repo structure

In October 2015 we converted our **main git repo** at <https://github.com/symbolicdata> to an organizational account and set up several new repos with different maintenance rules

-   *data* - the data repo with a single master branch mainly to backup recent versions of data, no versioning,
-   *code* - code directory with master and develop branches, under versioning,
-   *maintenance* - code chunks from different tasks and demos how to work with RDF based data, no versioning,
-   *publications* - as a backup store of the LaTeX sources of SD publications, only master branch, no versioning,
-   *web* - as an extended backup store of the SD web site that provides useful code to learn how RDF based data can be presented

Note that the former repo *symbolicdata* was deleted. **Do not base on forks of it**.

The main development is coordinated within the **SD Core Team** (Hans-Gert Gräbe, Ralf Hemmecke, Albert Heinle, Viktor Levandovskyy, Karim Abou Zeid) with direct access to the organizational account.

The repos *maintenance* and *web* are intended to show best practice code for using the RDF based data of the SymbolicData project. To use the code you may fork the repo but there is almost no reason to pull back code. If you have a valuable contribution please contact the Core Team to discuss how that contribution can be added to the project.

The repo *data* is the primary source for our data and is steadily updated. If you plan to add valuable data to the project please contact the Core Team to discuss how that contribution can be added. We provide you help to put the data in an appropriate Linked Open Data format.

The repo *publications* is mainly for reference and not intended for public additions. We provide LaTeX sources of our papers and slides and also information about reviews of our work.

The repo *code* contains several coding subprojects and is the only repo with a versioning strategy described below.

#### Repos and Development Model

On the *code* repo we run dedicated branches 'master' and 'develop' and follow the [Integration-Manager-Workflow Model](http://git-scm.com/book/en/Distributed-Git-Distributed-Workflows#Integration-Manager-Workflow).

To **contribute to the code repo**

-   Clone the develop branch of the public master to a private account (best, if also at github).
-   Start a feature branch from develop on your blessed repo.
-   Do valuable work.
-   Issue a pull request to the Integration Manager [Ralf Hemmecke](http://symbolicdata.org/Data/Person/Hemmecke_Ralf).
-   The Integration Manager starts the integration process to merge your work.
-   If accepted, the contribution will be merged into the develop branch of the official repo.
-   Realign your blessed repo with the official one.

Some more background: [Notes for Authors](http://symbolicdata.readthedocs.org/en/latest/authornotes.html) at <http://symbolicdata.readthedocs.org> how to get involved.

#### How the Integration-Manager-Workflow Model works

Here is a more detailed explanation about the workflow.

Let abbreviate the involved repositories GH-HGG, GH-RH, LOC-HGG, LOC-RH: These are the repositories at github (GH) and local (LOC) repositories for the developers HGG and RH. Each one has only write access to his own repos. Everyone has read-access to the github repo, but not to the local repository of the other person.

Here are typical sessions at LOC-HGG and LOC-RH:

```HGG$ git clone git@github.com:hg-graebe/code.git 
HGG$ git remote add ralf git://github.com/hemmecke/code.git
HGG$ git fetch ralf
HGG$ git merge ralf/master   # or maybe "git rebase ralf/master"
HGG$ git push                # put the merged commits to GH-HGG
RH$ git clone git@github.com:hemmecke/code.git
RH$ git remote add hgg git://github.com/hg-graebe/code.git
RH$ git fetch hgg
RH$ git merge hgg/master     # or maybe "git rebase hgg/master"
RH$ git push                 # put the merged commits to GH-RH
HGG$ edit, edit, edit
HGG$ git add ...
HGG$ git commit
HGG$ push origin master      # this pushes changes to GH-HGG
RH$ edit edit edit
RH$ git add ...
RH$ git commit
RH$ git fetch hgg            # this fetches GH-HGG changes to LOC-RH
RH$ git rebase hgg/master    # this puts LOC-RH commit on top of hgg/master.
HGG$ git pull ralf master    # merges in the latest changes from GH-RH
```

I hope that pretty much explains how the patches flow. RH counts as the Integration manager of his blessed github repo git@github.com:hemmecke/code.git and HGG acts as the Integration manager of his blessed repo git@github.com:hg-graebe/code.git.

Only the Integration manager needs write access to the blessed repo.

#### How to run certain tasks?

##### Pick a file from one branch to another

You can easily extract a file from another branch by doing

``` git checkout develop
 git checkout another-branch -- path/to/thisFile
 git reset
```

After that you would have *path/to/thisFile* from another-branch which is not committed in the develop branch. Modify as you like, use it, maybe even commit it.

##### 'git merge' or 'git rebase'?

<https://www.atlassian.com/git/tutorial/rewriting-git-history> says about that:

Rebasing is a common way to integrate upstream changes into your local repository. Pulling in upstream changes with git merge results in a superfluous merge commit every time you want to see how the project has progressed. On the other hand, rebasing is like saying, “I want to base my changes on what everybody has already done.”

**Don’t Rebase Public History!** You should never rebase commits that have been pushed to a public repository. The rebase would replace the old commits with new ones, and it would look like that part of your project history abruptly vanished.

Hence use 'git pull --rebase' only to reorder your **local** commits that are **not yet pushed to a remote repo**.

#### What's about commit messages?

In the git world there is a convention of how commit messages should be structured.

-   <http://doc.norang.ca/git-howto.html#sec-2>
-   <http://www.mediawiki.org/wiki/Git/Commit_message_guidelines>

#### Why git and how does it work?

Some remarks from Ralf Hemmecke's mails:

1) A git repository for a project is a huge (world-unique) directed acyclic graph (DAG). This DAG might have non-connected components (as we have it for the components of "master" and "old-master" - no connection between them).

2) Every person has just a part of that "world"-DAG on his local hard disk on github or anywhere else. In other words, the part that I have on my computer is usually different from the one that other people have. But (also usually) we share quite a big part of our project's "world"-DAG (usually all the commits on the "master" branch).

3) To each node in the DAG corresponds a sha1.

4) Different from Mercurial and SVN, a branch in git is nothing than another name for a sha1. The difference between the concepts "tag" and "branch" in git is simply that branch names move forward with a commit while tag names stay where they are. In Mercurial the concept of "branches" is very different.

5) The concept of "closing a branch" is a Mercurial concept. In git (if wanted) one simply get's rid of such disturbing stuff completely. "git branch -d" removes the branch and after "git gc", nobody will be able to see that a branch ever existed in git. (Well, it's a bit more complicated, but let's keep it simple.)

6) Branches in git are totally local. If someone has a branch "foo", that branch could be "bar" in my repository. Here we have "remotes" to name remote repositories and basically create namespaces for external branches. The name "origin" is such a "remote". In fact, neither "master" nor "origin" are particularly special in git. They are just used by convention.

When I do the following:

```
git clone git@github.com:hemmecke/code.git
git remote add upstream git://github.com/symbolicdata/code.git
```

I'll have two "remotes". One is called "origin" and the other "upstream". At that moment I only have a copy of the data from "origin" on my local machine. After

```
git fetch upstream
```

I'll have also the data from "upstream". And all these branches are different since they will be called "upstream/master", "upstream/...". The command "git branch -av" give you a list of all your branches including the "remotes". So you will see remotes/upstream/master, remotes/upstream/old-master, etc.

In other words, renaming branches is a local business, i.e. no problem at all.

* * * * *

Due to a well elaborated concept git allows for flexible management also of earlier commits. Git takes the content of a file (blob), computes the sha1, adds the length of the blob, zips that and stores it with the computed sha1 as file name. So it stores complete files and not increments as other VCS. Only "git gc" (it is called automatically after a while) tries to collect garbage.

  
From "git help gc": Runs a number of housekeeping tasks within the current repository, such as compressing file revisions (to reduce disk space and increase performance) and removing unreachable objects which may have been created from prior invocations of git add.

Due to the sha1 signature one has all the time the assurance that all data are intact. And if you are in doubt you can start "git fsck"

  
git-fsck - Verifies the connectivity and validity of the objects in the database


