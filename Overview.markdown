---
layout: default
title: Overview
---

### About the SymbolicData Project

This has to be refactored.

* * * * *

#### Motivation for the SymbolicData Project

For different purposes algorithms and implementations are tested on certified and reliable data. The development of tools and data for such tests is usually "orthogonal" to the main implementational efforts, it requires different skills and technologies and is not loved by programmers. On the other hand, in many cases tools and data could easily be reused - with slight modifications - across similar projects. The SymbolicData Project is set out to coordinate such efforts within the Computer Algebra Community.

Commonly collected certified and reliable data can also be used to compare otherwise incomparable approaches, algorithms, and implementations. Benchmark suites and Challenges for symbolic computations are not as well established as in other areas of computer science. This is probably due to the fact that there are not yet well agreed aims of such a benchmarking. Nevertheless various (often high quality) special benchmarks are scattered through the literature.

During the last years efforts toward collection of test data for symbolic computations were intensified. They focused mainly on the creation of general benchmarks for different areas of symbolic computation and the collection of such activities on different Web site.

For further qualification of these efforts it would be of great benefit to create a commonly available digital archive of these special benchmark data scattered through the literature. This would provide the community with an electronic repository of certified data that could be addressed and extended during further development.

#### Main Goals

With this motivation in mind the SymbolicData project has the following three main goals:

It will provide a framework and general tools

-   to collect data of examples from various areas of Computer Algebra
    -   in a systematic and uniform way together with related background information;
    -   in a form that conveniently allows to extend, manipulate, and categorize the collected data;
    -   such that they can be extracted in a form readable by different Computer Algebra Software;
    -   such that interrelations of the collected data can be specified;
-   to share best practice experience how to run test computations on these data, i.e.,
    -   to prepare data for input to different Computer Algebra Software;
    -   to set up, start, time, interrupt, and monitor the computations;
    -   to collect, analyse, and evaluate output data from these computations;
-   to run a net of Web sites that present data from the collection and results of test computations.

#### Current State

In a first stage we concentrated on the development of main design principles that allow for the necessary flexibility and extensibility. A first Perl implementation (2000-2003) was tested on collections of data from two areas of Computer Algebra: Polynomial System Solving and Geometry Theorem Proving.

With the growing importance of Semantic Web concepts the data presentation was refactored twice; first toward a true XML-based standard (2003-2005) and now (since 2006) to a mixture of OWL (for relational information) and XML (to store and address data resources). The data from Polynomial System Solving and Geometry Theorem Proving are available in the new format.

Applications to data from other areas of symbolic computations are intended. For this, we seek the cooperation of persons and groups that have related data collections at their proposal, are willing to share them with the community and to spend some effort to translate these data into the proposed format.
