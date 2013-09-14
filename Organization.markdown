---
layout: default
title: Organization
---

### Questions about how to organize the SD business

#### Naming conventions

Ralf Hemmecke (26.12.2012)

  
For directories I would anyway use all lower case (it'll make less complications if SD wants to support Windows). And no version number in the directory name.

Albert Heinle (31.12.2012)

  
Your concerns might be valid, but this is also a team-internal name for it so that we know what we are talking about. Just leave it, it does not hurt anyone I think. It will be the last time we put a "vn" to a directory.

#### How organize docu and what put into the repo ?

Albert Heinle (25.12.2012)

  
The thing is, that there are tex files, and my experience is that latex has different behaviour on different machines. If a person just wants to read the documentation, then he/she is only interested in the pdfs and not in the compilation of the tex files that might not work on the local machine. I have seen a lot of projects where developers also added the PDFs to the indexes, and I found that approach reasonable.

  
The same argument can be brought up about the epydoc documentation in the subfolder doc/ForDevelopers. We want the users to read the documentation, not compile it.

* * * * *

Ralf Hemmecke (26.12.2012)

  
Do you intend to also write up a document that explains the overall structure of the SDEval code? I mean some overview document that would help new developers to quickly be able to understand your code even if they are not super-professional in Python.

Albert Heinle (31.12.2012)

  
Yes, in fact we do. Give it a little time, we will provide it.

#### Is epydoc a good idea and what can be used else?

There is a long discussion about the proposal to move from epydoc to sphinx for documentation of python code on the Mailing list, see <https://groups.google.com/forum/>\#!topic/symbolicdata/toplbzlQBCg

Ralf

With Sphinx one doesn't get the same features as with epydoc, but also the Sage project is using it and it looks quite nice to my eyes. In fact, better than the epydoc frames.

<http://www.sagemath.org/doc/reference/sage/games/sudoku.html>

Since I wanted to try out sphinx and readthedocs myself, I've registered an account at readthedocs.org. This site is supported by webhooks. I've currently set this up for my repo at <https://github.com/hemmecke/symbolicdata>, but it's probably easy to change it to the "official" one at <https://github.com/symbolicdata/symbolicdata>

So any time I push something to github, the site <https://symbolicdata.readthedocs.org> will *automatically* be rebuilt. No need to install sphinx locally on your computer. ;-) It's just that currently only I can update the readthedocs pages.

As you probably see, I've taken the liberty to restructure your recent commit a61aabb804bf5edca7069a1ab9ad13ac3d28001d.

In short, what I have done:

-   move sdevalv2 to src/sdeval
-   remove all .html and .pdf and .tex files
-   remove epydoc config file
-   change the MANUAL section in src/sdeval/README.txt
-   translate the epydoc markers like @returns, @param, etc. to the respective sphinx markers (basically replacing @ by :) See end of mail for the actual command.
-   remove whitespace at the end of the line
-   add a few empty lines to make warnings go away
-   reformatted some text blocks to shorten lines to at most 80 chars
-   I've \*modified\* your commit, i.e. commit 247e08e4a9fe8a6a97f26350468ea950eac02f16 still appears with Albert Heinle as author, but with Ralf Hemmecke as committer.

Furthermore, I've added a doc directory that contains the stuff that I formerly committed to the gh-doc branch. I'll purge gh-doc and gh-pages from the github repo in a few days, since they are now obsolete.

I've also setup doc/sources/conf.py in such a way that it scans every .py file under src/ and generates a respective \*.rst file under doc/sources/api in case the file name corresponds to a class definition in the same file. ....
