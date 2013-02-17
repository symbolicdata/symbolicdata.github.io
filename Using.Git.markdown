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

The pre v.3 sources are copied to 'old-master' and will go step by step to 'master'. There remains a local clone symbolicdata@symbolicdata.org:git/symbolicdata for the moment, since we have learned to use the public Repo properly.

So clone the public Repo

` git clone `[`https://github.com/symbolicdata/symbolicdata`](https://github.com/symbolicdata/symbolicdata)

and you can switch between both branches with 'git checkout'. Project members (with proper SSH access) can freely push their changes to the repo symbolicdata@symbolicdata.org:git/symbolicdata that will be synced from time to time with the public Repo.

#### Naming conventions

Ralf Hemmecke (26.12.2012)

  
For directories I would anyway use all lower case (it'll make less complications if SD wants to support Windows).

#### What docu put into the repo ?

Albert Heinle (25.12.2012)

  
The thing is, that there are tex files, and my experience is that latex has different behaviour on different machines. If a person just wants to read the documentation, then he/she is only interested in the pdfs and not in the compilation of the tex files that might not work on the local machine. I have seen a lot of projects where developers also added the PDFs to the indexes, and I found that approach reasonable.

  
The same argument can be brought up about the epydoc documentation in the subfolder doc/ForDevelopers. We want the users to read the documentation, not compile it.


