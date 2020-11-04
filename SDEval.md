---
layout: default
title: SDEval
---

<table width="90%">
<tr align="center">
<td width="70%" style="font-size:20pt;">
Benchmarking for Computer Algebra

</td>
<td width="30%" >
<img width="70%" src="images/sdeval_logo.png"/>

</td>
</tr>
</table>
(Author Albert Heinle <aheinle@uwaterloo.ca>, 2015-02-19)

`SDEval` is a benchmarking toolbox built on top of the Symbolic Data database. Some of its main goals are

1.  providing an easy way of translating existing entries in Symbolic Data into executable code of computer algebra systems,
2.  providing a feasible way of trustfully reproducing computation results from current research papers and
3.  meeting the particularities of benchmarking in the field of computer algebra and flexibility in order to be applicable across different communities.

### Motivations for developing `SDEval`

Benchmarking of software – i.e. measuring the quality of results and the time resp. memory consumption for a given, standardized set of examples as input – is a common way of evaluating implementations of algorithms in many areas of industry and academia. Unfortunately, for the computer algebra community there are no standards for benchmarking of software yet, and often it is hard to reproduce certain timings and computation results coming from the literature. With `SDEval`, we aimed to change this, and provide an easy and flexible way to create benchmarks, which can be reproduced and extended by anyone.

Benchmarking in computer algebra differs from other benchmarking tasks, since one can make the following observations:

1.  Sometimes, the results of computations are not unique; that is, several non identically equal outputs can be equivalently correct. It is not always possible to find a canonical form for an output. Even if this is the case, the transformation of output into the canonical form can be quite costly. Moreover, the latter transformation is not necessarily provided by every single computer algebra system.
2.  Related to the previous item: If an answer is not unique, then the evaluation of the correctness of the output is often far from trivial. In some cases, the correctness-evaluation of certain results is even subject of on-going research.
3.  The field of computer algebra deals with a large variety of topics, even though it can be divided into classes of areas where certain common computational problems do appear. Thus, there need to be collections of benchmarks, optimally one as a standard for each class. The benchmark creation process should be flexible to be applicable in a wide range of areas.
4.  Considering input formats, many computer algebra systems are going their own ways, i.e. for many computation problems, telling the respective system what to calculate differ a lot. The source of this problem is that the way of representing certain given mathematical objects may also not be unified across the corresponding community.

We tried to address these challenges as much as possible when designing our toolkit.

Item (1) is something that differs the creation of benchmarks for computer algebra problems from most other fields of studies. Item (3) leads to the conclusion to provide the maximum flexibility possible. Item (4) also encapsulates another big problem: It is a fair assumption that most researchers know how to operate only a small number of computer algebra systems effectively. Trying to use a different computer algebra system for a specific example – which might work better – involves a learning curve for the user, and one can assume that many refrain from taking this curve. In this circumstance, having a possibility to translate certain examples into executable code for these computer algebra systems would be helpful.

### Current Features

`SDEval` currently contains the following features.

-   Creating a benchmark suite (i.e. given a computation problem, a set of problem instances and a set of computer algebra systems, one obtains an environment where one can let the computer algebra systems solve the computation problem on the given problem instances).
    -   Creation using a GUI or via script which runs in the terminal.
    -   Direct access to – and translation from – all supported tables in the Symbolic Data project.
    -   Gröbner Bases computations with different coefficient fields supported.
    -   Different computer algebra systems already supported. Templates for not-yet-supported systems are easy to add, without deep knowledge of the Python programming language.
-   Running and monitoring scripts on certain computer algebra systems.
    -   Reproducable execution and time measurement.
    -   Automatic collection of computation environment information.
    -   Visualization of computation results as HTML file(s) (style of HTML file(s) is also customizable).
    -   Timings available through XML-files, for further automatized data analysis.
    -   Automatic limits with respect to time and memory consumption can be set.
    -   Possibility to run several scripts in parallel.
    -   Possibility to stop the computations and resume them later (even on a different machine).
-   Easy adjusting of the settings due to use of human-readable XML-files for the settings.
-   Customized output interpretation scripts possible.

### How to obtain `SDEval`

`SDEval` is part of the Symbolic Data distribution on [GitHub](https://github.com/symbolicdata/symbolicdata). The latest developments can be obtained from [Albert's fork](https://github.com/ioah86/symbolicdata) of the main repo.

### Documentations/Manuals/Tutorials

A quick manual, some clarifications of certain terms used for Symbolic Data and FAQ's can be found on the [SD Doku project](http://symbolicdata.readthedocs.org/en/latest).

There is also a [video tutorial/introduction for `SDEval`](https://www.youtube.com/watch?v=CctmrfisZso) on Youtube. It covers the main functionality of the provided scripts.

**Papers and Presentations:**

-   Albert Heinle, Viktor Levandovskyy, Andreas Nareike: SymbolicData:SDEval – Benchmarks for Everyone ([pdf](Papers/casc2013-preprint.pdf)). Preprint, 2013.

### News and History

-   2015-02-17, Albert: A tutorial for interested users can be viewed at <https://www.youtube.com/watch?v=CctmrfisZso>.
-   2015-02-04, Albert on the [sd mailing list](https://groups.google.com/d/msg/symbolicdata/2rZXK_j8Afk/Ktztshg3OqMJ): A **new version of SDEval** is to be released soonly. See <https://github.com/ioah86/symbolicdata> for a preview.
-   2012-12: Albert Heinle presented at the [SD Workshop](Events.2012-12 "wikilink") a first version of the `SDEval` framework.

