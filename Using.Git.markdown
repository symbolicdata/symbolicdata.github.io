---
layout: default
title: Using.Git
---

HGG 2013-01-19

Within another project we discussed the git-branch development model <http://nvie.com/posts/a-successful-git-branching-model>. It looks quite reasonable, so my proposal is to follow these standards also with symbolicdata. -- HGG 2013-01-19

I've nothing against following this, but I think for SD it looks like too much overhead in learning these branching structure. Release tagging happens on the master branch. That should be pretty clear, but otherwise most important thing for me is that the master branch always compiles, i.e. each developer can build a local version for him/herself without any problem. Anything else must happen on another branch.

More important for me than fixing a branching model is that SD get's commits at all.

But OK, let's follow your suggestion. -- Ralf 2013-01-22

* * * * *

May I ask you what rules you follow for marking the commit message with "[DEBUG]" (or "[UPDATE]" in the previous commit? -- Ralf, 2012-01-22

That is coming from a team that I was working with in a Software-Project in Aachen. We decided after a hint of our Professor and an article from Knuth to use keywords to be able to make easy statistical measurements in the end (like how many debugs were needed, how often have we refactored, etc...). Just so that we have a self-reflective image. I liked that and I adapted it to my commit-habits. -- Albert, 2012-01-23
