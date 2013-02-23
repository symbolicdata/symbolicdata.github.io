---
layout: default
title: Events.2012-12
---

[Main\_Page](Main_Page "wikilink") \> [Events](Events "wikilink")

### 13.-14. December 2012 - Workshop on SymbolicData Design in Leipzig.

Within the [E-Science Benchmarking Project](Projects.EScience "wikilink") we invited for a Workshop and Hackathon to discuss and promote different aspects of the SymbolicData Project. The Workshop took place at [HTWK](http://www.htwk-leipzig.de) - Hochschule für Technik, Wirtschaft und Kultur Leipzig.

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

### A Short Summary

We had two days of intense discussions about the goals, philosophy, subprojects, links etc. of the SymbolicData Project.

First we discussed the current state of the project. *Hans-Gert Gräbe* explained in detail the work done so far towards a redesign of the Data collection according to Linked Open Data standards. Within this refactoring process we distinguish more clearly between *Data* (called *XMLResources*, although it turned out during the discussion that one should not restrict the support of syntactical expressiveness to XML only) and *Metadata* (called *RDFResources*, since interlinking of metadata is nowadays best supported by the RDF based [Semantic Web Stack](http://en.wikipedia.org/wiki/Semantic_Web_Stack)). Such a distinction allows to express more clearly another point: *Data* and it semantic meaning are managed *within* different Computer Algebra Communities, *Metadata* are required for *Cross Community Communication* purposes. The main future focus of SymbolicData will be on the needs of such a Cross Community Communication between different Computer Algebra Communities.

*Albert Heinle* presented the [SDEval](SDEval "wikilink") framework. It grew up from the profiling and testing needs of the [FreeAlgebra](FreeAlgebra "wikilink") community, but is generic enough to serve as a best practice how to organize automated set up, run, evaluation and comparison of dedicated computational tasks on a large amount of data. The framework is written in *python* and has a (not yet explored) conceptual overlap with the [JUnit framework](http://en.wikipedia.org/wiki/JUnit) best practices. It heavily uses UNIX process management facilities to flexibly define and set up computational environments with dedicated characteristics and can be reused for a wide range of computational tasks with different CA software. SDEval continues the SymbolicData efforts to establish standards how to set up environments for a *[cross cutting concern](http://en.wikipedia.org/wiki/Cross-cutting_concern)* as testing and benchmarking of CA software on a larger collection of given data.

*Satya Samal* presented the PoCaB Project - Plattform of Chemical and Biological Analysis Using Computer Algebra Methods - and explained in detail structural approaches within the PoCaB Databases and how data are generated within the PoCaB framework. PoCaB mainly addresses topics around categorization of differential equation systems in mass action and non-mass action kinetics in chemical systems coming from a biological background. PoCaB is interlinked with different communities within CA (Polynomial Systems Solving and the polymake community) and also beyond. In particular, it heavily exploits [biological databases](http://www.ebi.ac.uk/biomodels-main/) (BioModel Database, KEGG Database) that come with their own language [SMBL](http://sbml.org) and experiences how to express semantical aspects in a computer readable way. This example shows very clearly that CA Communities are not interested in advice from outside how to reinvent wheels properly running for a long time *within* the community but acknowledge support and advice how to organise inter community communication properly and more smoothly in a world of evolving standards. It requires more effort to understand what needs of PoCaB can be addressed by and in cooperation with the SymbolicData Project and how to do that.

*Johannes Waldmann* gave a talk about Benchmarks and Competitions in Theoretical Computer Science presenting best practices of three TCS Communities: Termination, SAT and SMT. For Termination he explained TPBD - the [Termination Problems Data Base](http://termination-portal.org/wiki/TPDB) - and their way of benchmarking: They regulary organize Termination Competitions on previously agreed data from different problem categories in a similar way as the "Formel I" car race is organized: Upload tools to a single dedicated server that runs all tolls on all problems and presents the results in aggregated form an a web page. Usually such a competition runs accompanying the annual large conference in the field. All communities have their own (intracommunity) infrastructure - workshops, mailing lists, wiki (to carry forward a "common story") - and domain specific

-   input syntax and semantics specification,
-   standards for what is an acceptable proof trace (none - informal - verifyable),
-   methods for selecting competition problems,
-   algorithms for scoring results.

Joe Waldmann pointed our attention to the [StarExec](http://www.starexec.org/starexec/public/about.jsp) project

  
Starexec is a cross community logic solving service under development at the University of Iowa ... Our goal is to provide a shared logic solving infrastructure to researchers to manage benchmark libraries, community membership, and provide solver execution on a large cluster and facilitate translation between logics. ... We are funded by a \$1.85 million USD grant from the National Science Foundation ...

The StarExec Project has the goal to provide a domain-agnostic execution platform (software and hardware) for running competitions in computational logics and developed some meta-model of competitions that covers standards for benchmarks, tools and results.

Let me summarize the results of the workshop for the future of SymbolicData:

First we decided to refocus the SymbolicData Project to address needs of *communities* within Symbolic Computation to profile, test and benchmark implementations. There is a commonly complained misrecognition of these efforts because such contributions are not in the focus of reputational processes of the respective communities and are rarely proper acknowledged. This is mainly due to the specifics in that area, and SymbolicData will address, collect, offer, ... standards and best practices to change that *across* the different CA communities.

SymbolicData (v.1 and v.2) had its origin within the Polynomial Systems Community, so such a refocussing has to be processed also as a reorganization of data for SymbolicData v.3. A list of communities (at the moment called "areas") with benchmarking activities addressed by SymbolicData will be maintained on the [wiki main page](Main_Page "wikilink"), and there is a process of standardized presentation of community aims on the way.

For the future there should be a better interlinking between (intracommunity) sources, resources and communication structures *within* such a community and SymbolicData. A new use case to really understand the problems with such interlinking is given with [PoCaB](http://pocab.cg.cs.uni-bonn.de). This will be a great step towards Linked Data. Other use cases are given by the Databases of the SPP1489.

[SDEval](SDEval "wikilink") - a common benchmarking compute framework written in python and (more or less) ready to use also beyond the [FreeAlgebra](FreeAlgebra "wikilink") community - represents best practice of running dedicated computational tasks on a large amount of given data. This code is (almost) available from the SymbolicData Public Repository.

In the near future we focus on consolidating SymbolicData and releasing a stable v.3. As a first step we moved to git and operate a [public Repo](https://github.com/symbolicdata) at github. See [Using.Git](Using.Git "wikilink") for more information about the organization of the public Repo and our Git Development Process.

There is a [Sparql endpoint](http://en.wikipedia.org/wiki/SPARQL) for SymbolicData available at <http://symbolicdata.ontowiki.net> that serves the latest RDFData.

In the second half of July there will be another workshop in Leipzig to "count the chickens we hatched" and to estimate what left after the E-Science project will end at Aug 31, 2013.
