---
layout: default
title: Lmonade
---

### The lmonade Project

<http://www.lmona.de/>

**Goal**: A platform for development and distribution of mathematical software

  
lmonade is a light-weight meta distribution of scientific software that can be installed without administrative rights on Unix based operating systems. It creates a uniform environment for development to simplify code sharing and distribution especially when complex dependencies are involved. This platform enables researchers to build on existing tools without fear of losing users to baffling installation instructions, and allows them to concentrate on specialized reusable libraries while taking advantage of testing and distribution infrastructure available only in large monolithic systems. ([Source](http://www.lmona.de/about))

* * * * *

From a mail conversation between Hans-Gert Gräbe (HGG), Burcin Erocal (BE) and Albert Heinle (AH) (2013-02-20)

**Cooperation with the SymbolicData project**

BE: Yes, we are definitely interested in such a cooperation.

-   We should have a SymbolicData package in lmonade which installs a snapshot of the database and perhaps some of the scripts:
    -   <http://issues.lmona.de/issue74>
-   At some point in the future, I'd like to set up a framework to test the performance of (nightly snapshots of) major open source computer algebra systems on a selected set of examples from symbolic data.
    -   Codespeed might be used for this purpose: <https://github.com/tobami/codespeed>
    -   For an example see: <http://speed.pypy.org/>
-   We could try to work on this infrastructure together, but I'm afraid I don't have any spare resources ATM.

I would be happy to discuss issues related to symbolic data packaging in lmonade on the mailing list <https://groups.google.com/forum/?fromgroups>\#!forum/lmnd-devel

**Relation to [SDEval](SDEval "wikilink")**

BE: We can optionally install the scripts from SDEval from the (yet to be created) symbolic data package in lmonade. For this we need to make sure that they work outside of the directory tree obtained from the SD repository.

AH: It does. If you do not have the SymbolicData entries, you will be asked for a complete path to access them in the create\_tasks\_gui.py. You cannot make export folders without taking the entries from SymbolicData.
