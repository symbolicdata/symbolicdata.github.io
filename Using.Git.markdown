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

* * * * *

#### How organize docu and what put into the repo ?

Albert Heinle (25.12.2012)

  
The thing is, that there are tex files, and my experience is that latex has different behaviour on different machines. If a person just wants to read the documentation, then he/she is only interested in the pdfs and not in the compilation of the tex files that might not work on the local machine. I have seen a lot of projects where developers also added the PDFs to the indexes, and I found that approach reasonable.

  
The same argument can be brought up about the epydoc documentation in the subfolder doc/ForDevelopers. We want the users to read the documentation, not compile it.

Ralf Hemmecke (26.12.2012)

I haven't done anything with epydoc so far, but I've taken your latex files and converted them to .rst.

This has two advantages.

1.  The pages can be easily viewed online - <http://hemmecke.github.com/symbolicdata/sdeval-quick-manual.html>
2.  The corresponding .rst file is reasonably readable even without translation into html.

Wow, github.com even [shows .rst files](https://github.com/hemmecke/symbolicdata/blob/gh-doc/documentation-sources/source/sdeval-quick-manual.rst) compiled. You have to press the "Raw" button to see the actual source.

What do you think?

Oh, I just realise that the generated epydoc stuff lives under doc/ForDevelopers.

  
1) Whom to you count as "developer"?

2) Should all developers be able to generate the documentation from source?

3) Where is it described how to install/use epydoc?

My answer to that is:

  
1) Everyone who takes the sources from the git repository declares himself to be knowledgable enough to count as a developer. For "users" there should be a release tarball with a proper release

version number.

  
2) Yes. In fact, it should be as simple as taking a one-time installation of some tools (epydoc, sphinx, etc.) and then calling some "make" target.

That would also help to be able to deal with broken links. When I load symbolicdata/sdevalv2/doc/ForDevelopers/index.html into my browser and then click in the lower right frame on

  
sdevalv2.classes.exceptions.XMLRessourcesInvalidPath.XMLRessourcesInvalidPath

I get "File not found"

3) I'd expect something like this. <http://symbolicdata.github.com/symbolicdata/website.html>

BTW, do you intend to also write up a document that explains the overall structure of the SDEval code? I mean some overview document that would help new developers to quickly be able to understand your code even if they are not super-professional in Python.

Consulting their [svn Repo](http://epydoc.svn.sourceforge.net) epydoc seams to be dead since almost 4 years.
