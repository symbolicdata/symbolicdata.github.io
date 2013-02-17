---
layout: default
title: Events.2012-12
---

[Main\_Page](Main_Page "wikilink") \> [Events](Events "wikilink")

### 13.-14. December 2012 - Workshop on SymbolicData Design in Leipzig.

Within the [E-Science Benchmarking Project](Projects.EScience "wikilink") we invited for a Workshop and Hackathon to discuss and promote different aspects of the SymbolicData Project. The Workshop took place at [HTWK](http://www.htwk-leipzig.de) - Hochschule für Technik, Wirtschaft und Kultur Leipzig.

We had no funding for that workshop, so all expenses on travelling, lodging and "Kneipe" were to the participants.

[Announcement](http://portal.imn.htwk-leipzig.de/events/workshop-on-symbolicdata-design) of the meeting by HTWK.

Participants:

-   Hans-Gert Gräbe, Andreas Nareike (Uni Leipzig)
-   Johannes Waldmann (HTWK Leipzig)
-   Viktor Levandovskyy, Albert Heinle, Benjamin Schnitzler (RTWH Aachen)
-   Satya S. Samal (Uni Bonn)

### Program

**Thursday, 13.12.**

-   13:00 Registration, Come Together
-   14:00 Opening, Presentation and Discussion of the SymbolicData Project overall structure
-   16:00 Presentation and Discussion of the Free Algebra Data Part
-   18:00 Presentation and Discussion about Scripts and Tools
-   19:30 Kneipe

**Friday, 14.12.**

-   9:00 Plenary Discussion about the future infrastructure of SymbolicData
-   11:00 Presentation on the [PoCaB](http://pocab.cg.cs.uni-bonn.de) Project
-   13:30 Benchmarks and Competitions in Termination, SAT and SMT (J.Waldmann, HTWK Leipzig) ([Slides](http://www.imn.htwk-leipzig.de/~waldmann/talk/12/sym/main.pdf))
-   15:00 Connecting large scientific Projects as [SageMath](http://www.sagemath.org/) or [PoCaB](http://pocab.cg.cs.uni-bonn.de) or [StarExec](http://www.starexec.org/starexec/public/about.jsp)
-   17:30 Kneipe

### A Short Report

We shortened the workshop that ended on friday late evening due to time constraints of the participants. We had two days of intense discussions about the goals, philosophy, subprojects, links etc. Here are some notes beyond the slides and links added to the program schedule.

Much requires some more structure, but here is a first report of the most important things.

First we decided to refocus (or even focus, I have no idea if there was really a focus of SymbolicData during the last years) as a project that addresses needs of *communities* within Symbolic Computation to benchmark implementations. There is a commonly complained misrecognition of these efforts because such contributions are not in the focus of reputational processes of the respective communities and are rarely proper acknowledged. This is mainly due to the specifics in that area, and SymbolicData will address, collect, offer, ... standards and best practices to change that *across* communities.

SymbolicData (v.1 and v.2) had its origin within the PolynomialSystems community, so such a refocussing has to be processed also as a reorganization of data for SymbolicData v.3. A list of communities (at the moment called "areas") with benchmarking activities addressed by SymbolicData you can find already now on the [wiki main page](Main_Page "wikilink"), and there is a process of standardized presentation of community aims on the way.

For the future there should be a better linking between (intracommunity) sources, resources and communication structures *within* such a community and SymbolicData. A new use case to really understand the problems with such interlinking is given with [PoCaB](http://pocab.cg.cs.uni-bonn.de). This will be a great step towards Linked Data.

A nice talk was given by the Aachen group on [SDEval](SDEval "wikilink") - a common benchmarking compute framework written in python and (more or less) ready to use also beyond the [FreeAlgebra](FreeAlgebra "wikilink") community. We decided to put that within a separate project.

So we will now consolidate SymbolicData v.3. As a first step we moved the sources from Mecurial to git and opened a [public Repo](https://github.com/symbolicdata) at github. A local git Repo symbolicdata@symbolicdata.org:git/symbolicdata is yet working and synced from time to time with the public Repo. At the moment we manage two branches 'old-master' and 'master' but we plan to start a dedicated development process with 'master' and 'development' branches following a well established development model. See [Using.Git](Using.Git "wikilink") for more information about the organization of the public Repo and our Git Development Process (in status nascendi).

Note that I started a [Sparql endpoint](http://en.wikipedia.org/wiki/SPARQL) for SymbolicData available at <http://symbolicdata.ontowiki.net> that serves the latest RDFData.
