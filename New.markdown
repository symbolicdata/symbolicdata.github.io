---
layout: default
title: New
---

### What's new?

-   Preparation of SD Release 3.1
    -   (2015-10-16) Ralf Hemmecke managed to switch <https://github.com/symbolicdata> to an organizational account to maintain code directly within that account (no more forks, at least within the central team).
    -   (2015-11-11) Start of the [mailing list sd-announce](http://lists.informatik.uni-leipzig.de/mailman/listinfo/sd-announce) as a common channel for news within the CA community beyond conference announcements. Conference announcements are collected within the [CASN Upcoming Conferences subproject](CASN "wikilink").
    -   (2015-12-26) Set up of several repos with different maintenance rules - *data* (data repo with a single master branch mainly to backup recent versions of data, no versioning), *code* (code directory with master and develop branches, under versioning), *publications* (as a backup store of the LaTeX sources of SD publications, only master branch, no versioning). The new repos were synced with the most propagated SD version at hg-graebe/symbolicdata/tree/develop and also with the src/sdeval dir of ioah86/symbolicdata/tree/develop.
        -   develop branch of *code* not yet created.
        -   The old repo <https://github.com/symbolicdata/symbolicdata> is deprecated and will be switched off in a near future.
-   Reorganization of the formerly separate CASN part
    -   (2015-07-26) The first tabs of [our new info site](http://symbolicdata.org/info) go online. It is used to demonstrate the power of our CASN concepts in a standalone fashion, i.e., not bound to the Wordpress environment of the [website of the German Fachgruppe](http://www.fachgruppe-computeralgebra.de/symbolicdata/).
    -   (2015-12-30) The RDF Graphs *News*, *PersonalProfiles*, *ZBMathPeople*, *UpcomingConferences* and *PastConferences* were moved from to the main RDF Store and the corresponding scripts were adjusted.
    -   (2016-01-03) The redesign of the CASN stuff of the German Fachgruppe was finished. Now it uses data from a [local store](http://www.fachgruppe-computeralgebra.de/rdf/) at the website of the German Fachgruppe and shortcode defined in a special Wordpress plugin (both backed up in a git repo private to the German Fachgruppe).
        -   The available features are listed in a [separate menu point](http://www.fachgruppe-computeralgebra.de/symbolicdata/) at the website of the German Fachgruppe, the Wordpress plugin code is [mirrored in our public repo](https://github.com/symbolicdata/web/tree/master/casn-plugin).
    -   (2016-02-20) Another tab to explore the SD people list was added to [our new info site](http://symbolicdata.org/info). The [SD people list](http://symbolicdata.org/Data/People/) contains 1036 entries of people involved with Computer Algebra. The sd:country property was removed, country is now listed as part of the affiliation.

* * * * *

-   (2015-07-20) [Presentation of SymbolicData](Publications "wikilink") at ACA 2015 in Kalamata, Greece.

* * * * *

-   (2015-04-07) In the current issue of the SIGSAM Communications in Computer Algebra an article on the SDEval Toolkit appeared ("The SDEval Benchmarking Toolkit").

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
-   (2014-08-01) A [first alignment](http://symbolicdata.org/Data/ZBMathPeople/) of the SD people database with the ZBMath author database (348 matchings out of 678 persons).

