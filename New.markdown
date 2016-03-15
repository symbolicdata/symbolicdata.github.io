---
layout: default
title: New
---

### What's new?

-   SD Release 3.1
    -   (2015-10-16) Ralf Hemmecke managed to switch <https://github.com/symbolicdata> to an organizational account to maintain code directly within that account (no more forks, at least within the central team).
    -   (2015-11-11) Hans-Gert Gräbe set up the [mailing list sd-announce](http://lists.informatik.uni-leipzig.de/mailman/listinfo/sd-announce) as a common channel for news within the CA community beyond conference announcements. Conference announcements are collected within the [CASN Conferences subproject](Conferences "wikilink").
    -   (2015-12-26) Hans-Gert Gräbe set up several new repos with different maintenance rules - *data* (data repo with a single master branch mainly to backup recent versions of data, no versioning), *code* (code directory with master and develop branches, under versioning), *publications* (as a backup store of the LaTeX sources of SD publications, only master branch, no versioning), *web* (as an extended backup store of the SD web site that provides useful code to learn how RDF based data can be presented) and synced the new repos with the most propagated SD version at hg-graebe/symbolicdata/tree/develop, the formely private web repo and also with the src/sdeval dir of ioah86/symbolicdata/tree/develop.

-   -   (2016-02-21) Hans-Gert Gräbe aligned the data and wiki descriptions of [BirkhoffPolytopes](BirkhoffPolytopes "wikilink"), [FanoPolytopes](FanoPolytopes "wikilink") and [TransitiveGroups](TransitiveGroups "wikilink") and created another git repo *maintenance* (code chunks from different tasks and demos how to work with RDF based data, no versioning).
        -   In particular, this repo contains a mirror of the Wordpress plugin code used by the German CA Fachgruppe and the transformation code developed by Andreas Nareike in 2013 for polytopes and groups databases.
    -   (2016-03-01) Hans-Gert Gräbe released the new version tagging the git repos.
        -   develop branch of *code* created.
        -   The old repo <https://github.com/symbolicdata/symbolicdata> is deprecated and was removed.

* * * * *

-   (2015-07-20) Hans-Gert Gräbe gave a [Presentation of SymbolicData](Publications "wikilink") at ACA 2015 in Kalamata, Greece.

* * * * *

-   (2015-04-07) Albert Heinles paper "The SDEval Benchmarking Toolkit" appeared in the March 2015 issue of the SIGSAM Communications in Computer Algebra.

* * * * *

-   (2015-04-06) Tim Römer recompiled also the old TestSets examples according to the new syntax. All stuff from the old format was cleaned up from the repos and the web pages were adjusted.
-   (2015-03-13) Tim Römer (Osnabrück, Normaliz team) provided a consolidated and "fingerprinted" version of the TestSets collection in a new format close related to the Normaliz notation.

* * * * *

-   (2015-02-17) Albert Heinle released a new version of [SDEval](SDEval "wikilink") and added a tutorial for interested users.

* * * * *

-   (2014-11-20) symbolicdata.org is again up and running.
-   (2014-10-30) The domain symbolicdata.org was accidentally included by GI authorities into a bundle of domains to be released and meanwhile taken over by third party. We asked the authorities to try hardly to get the domain back.

* * * * *

-   (2014-08-01) The [SD people list](http://symbolicdata.org/Data/People/) contains 692 entries of people involved with Computer Algebra. The information was extracted from different sources.
    -   As standard information we provide personal information as instance of foaf:Person with (as subset of) keys foaf:name , foaf:homepage, sd:affiliation (a literal). Due to privacy reasons we do not provide foaf:mbox (email) values. This list is steadily enlarged and used as URI reference for reports about different activities (invited speakers, conference organizers etc.)
    -   2014-08-31: foaf:name standard changed from "lastName, firstName" to "firstName lastName".
    -   2016-02-20: sd:country removed, country is now part of the sd:affiliation literal as "Affil., Country"
-   (2014-08-01) Hans-Gert Gräbe compiled a [first alignment](http://symbolicdata.org/Data/ZBMathPeople/) of the SD people database with the ZBMath author database (348 matchings out of 678 persons).

