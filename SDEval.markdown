---
layout: default
title: SDEval
---

### The SDEval Framework

Albert Heinle presented at the [Workshop](Events.2012-12 "wikilink") a framework for setting up trusted and repeatable computations that can easily be rerun on a local machine. A python implementation of the framework is available "as is" from the Scripts/python/sdeval directory in the old-master branch of the SD git repo.

There is a workflow to be described in more detail later. Note that special emphasis was spent on [Timing](Timing "wikilink") issues - every run of every example is monitored from outside by a system time process, that are spawned by a master process to monitor time, resources etc. and allow for cancellation of subprocesses.
