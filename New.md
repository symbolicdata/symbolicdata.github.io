---
layout: default
title: New
---

### What's new?

-   (2018-09-01) Hans-Gert Gräbe closed the RDF graph UpcomingConferences.
-   (2018-05-20) Hans-Gert Gräbe added a section [Disclaimer](Disclaimer "wikilink") that reflects the legal situation according to the regulations of the [EUDATAP](https://www.iitr.us/eudatap).
-   (2018-03-20) Hans-Gert Gräbe added a first DCAT Catalogue description of the data. 
-   (2017-12-16) Hans-Gert Gräbe closed the mailing list sd-announce.

* * * * *

-   (2020-02-12) The Board of the German Fachgruppe announces that it will end its sponsorship of the domain symbolicdata.org.
-   (2018-03-03) Envisaging the upcoming retirement of Hans-Gert Gräbe in Aug 2021 HGG rises the question to move the domain hosted currently at Leipzig University to a different location. The domain is owned by the GI, the German Computer Science Society, on behalf of the German Fachgruppe.  During the last years the main part of the SymbolicData web infrastructure was moved to github pages.  Currently [at Leipzig University](Domain "wikilink") are hosted
    - data that is also available from the github repository and 
    - the last remainder of the [CASN Demo page](http://symbolicdata.org/info/), that extracts information from a [Virtuoso based SPARQL endpoint](LocalSparqlEndpoint "wikilink") also located at that server.
-   (2018-03-02) Gregor Kemper informed on behalf of the Board of the German Fachgruppe that there is no interest within the board visible to actively promote SymbolicData, but in honour of Gräbe's efforts they will continue to sponsor the domain.  During the relaunch of the Website of the German Fachgruppe most of the [CASN features](CASN "wikilink") were switched off, the [link](http://www.fachgruppe-computeralgebra.de/symbolicdata/) to our activities was removed from the menu bar.
-   (2017-12-11) Viktor Levandovskyy mentioned the SymbolicData Project and the SDEval approach at the conference [Open Source Computer Algebra Research (OSCAR)](https://www.mis.mpg.de/calendar/conferences/2017/oscar2017.html).
    - He asked about support for the SymbolicData Project from TRR 195 an got the answer "who will care about that, we have no free resources".
    - Bernd Sturmfels promoted a session/discussion [What to do with Big Old Data?](https://www.mis.mpg.de/fileadmin/pdf/slides_oscar2017_3198.pdf).
-   (2017-12-03) Hans-Gert Gräbe asked Wolfram Decker about the role that SymbolicData will play within the TRR 195 and the upcoming [OSCAR Project](https://www.computeralgebra.de/sfb/).
    - Antwort Decker (2017-12-17): Bei dem von Ihnen angesprochenen SFB/Transregio TRR 195 geht es nicht um die Konsolidierung von Daten sondern um ausgewählte mathematische Projekte sowie die Entwicklung eines neuen fachübergreifenden CAS, das unter dem Namen OSCAR auf in Deutschland bereits etablierte Software wie GAP, polymake oder Singular aufbaut.

* * * * *

-   (2018-10) Hans-Gert Gräbe published a last paper ["20 Years SymbolicData"](Publications "wikilink") both in Computeralgebra-Rundbrief and the ACM CCA. The paper explains the ups and downs of the project during the 20 years of its existence, with special emphasis on the - ultimately futile - efforts in recent years to merge it with other activities such as the swMath project at the ZBMath or the SIGSAM CCA group and to convince the project's target group of its importance for strengthening a research data infrastructure.
-   (2017-03) Albert Heinle and others publish a [paper "Some steps to improve software information"](Publications "wikilink") both in the [Computeralgebra-Rundbrief](http://www.fachgruppe-computeralgebra.de/rundbrief/) and the [Communications in Computer Algebra](https://www.sigsam.org/cca/).
-   (2016-08) Hans-Gert Gräbe published a [note about the SymbolicData Project](Publications "wikilink") in the Computeralgebra-Rundbrief. 
-   (2016-08) Hans-Gert Gräbe submitted a [paper about the SymbolicData concepts](Publications "wikilink") to the ACA 2016 Session: Information services for mathematical software, models, and research data. It was not accepted for the conference proceedings and not presented at the conference.  
-   (2016-05-08) Hans-Gert Gräbe submitted an [extended abstract](Publications "wikilink") for a presentation at the [ICMS 2016 Session: Information Services for Mathematics: Software, Services, Models, and Data](http://www.emis.de/data/community/icms_s14.html) in Berlin, Germany
    - (2016-07) The talk was given at the conference, the paper was published in the conference proceedings.  
-   (2016-03-15) Hans-Gert Gräbe submitted a [paper](Publications "wikilink") to the ["Projects and Surveys" track of CICM'16](http://cicm-conference.org/2016/cicm.php?event=surveys) in Bialystok, Poland.
    -   (2016-05-06) The paper was not accepted for presentation.

* * * * *

-   SD Release 3.1
    -   (2015-10-16) Ralf Hemmecke managed to switch <https://github.com/symbolicdata> to an organizational account to maintain code directly within that account (no more forks, at least within the central team).
    -   (2015-11-11) Hans-Gert Gräbe set up the [mailing list sd-announce](http://lists.informatik.uni-leipzig.de/mailman/listinfo/sd-announce) as a common channel for news within the CA community beyond conference announcements. Conference announcements are collected within the [CASN Conferences subproject](Conferences "wikilink").
    -   (2015-12-26) Hans-Gert Gräbe set up several new repos with different maintenance rules - *data* (data repo with a single master branch mainly to backup recent versions of data, no versioning), *code* (code directory with master and develop branches, under versioning), *publications* (as a backup store of the LaTeX sources of SD publications, only master branch, no versioning), *web* (as an extended backup store of the SD web site that provides useful code to learn how RDF based data can be presented) and synced the new repos with the most propagated SD version at hg-graebe/symbolicdata/tree/develop, the formely private web repo and also with the src/sdeval dir of ioah86/symbolicdata/tree/develop.
    -   (2016-02-21) Hans-Gert Gräbe aligned the data and wiki descriptions of [BirkhoffPolytopes](BirkhoffPolytopes "wikilink"), [FanoPolytopes](FanoPolytopes "wikilink") and [TransitiveGroups](TransitiveGroups "wikilink") and created another git repo *maintenance* (code chunks from different tasks and demos how to work with RDF based data, no versioning).
        -   In particular, this repo contains a mirror of the Wordpress plugin code used by the German CA Fachgruppe and the transformation code developed by Andreas Nareike in 2013 for polytopes and groups databases.
    -   (2016-03-01) Hans-Gert Gräbe released the new version tagging the git repos.
        -   develop branch of *code* created.
        -   The old repo <https://github.com/symbolicdata/symbolicdata> is deprecated and was removed.
-   Reorganization of the formerly separate CASN part
    -   (2015-07-26) The first tabs of [our new info site](http://symbolicdata.org/info) go online. It is used to demonstrate the power of our CASN concepts in a standalone fashion, i.e., not bound to the Wordpress environment of the [website of the German Fachgruppe](http://www.fachgruppe-computeralgebra.de/symbolicdata/).
    -   (2015-12-30) Hans-Gert Gräbe moved the RDF Graphs *PersonalProfiles*, *ZBMathPeople*, *UpcomingConferences* and *PastConferences* to the main RDF Store and adjusted the corresponding scripts.
        -   Now the separate CASN RDF store operates only some experimental stuff and data for the website of the German Fachgruppe.
    -   (2016-01-03) Hans-Gert Gräbe finished the redesign of the CASN stuff of the German Fachgruppe. Now it uses data from a [local store](http://www.fachgruppe-computeralgebra.de/rdf/) at the website of the German Fachgruppe and shortcode defined in a special Wordpress plugin (both backed up in a git repo private to the German Fachgruppe).
        -   The available features are listed in a [separate menu point](http://www.fachgruppe-computeralgebra.de/symbolicdata/) at the website of the German Fachgruppe, the Wordpress plugin code is [mirrored in our public repo](https://github.com/symbolicdata/web/tree/master/casn-plugin).
        -   Now the separate CASN RDF store operates only some experimental stuff.
    -   (2016-02-20) Hans-Gert Gräbe added another tab to explore the SD people list to [our new info site](http://symbolicdata.org/info). The [SD people list](http://symbolicdata.org/Data/People/) contains 1036 entries of people involved with Computer Algebra. The sd:country property was removed, country is now listed as part of the affiliation.
    -   (2016-02-20) Hans-Gert Gräbe moved the [RDF Graph *News*](http://symbolicdata.org/Data/News/) to the main RDF Store and added some more news to the sd-announce list. This RDF Graph is intended to feed a [news channel](News "wikilink").
        -   The separate CASN RDF store can be closed down.
    -   (2016-02-20) Hans-Gert Gräbe added conference reports of Bad Boll 2014, CICM 2012, CICM 2013, CICM 2014, CICM 2015 to the [SymbolicData CASN node](http://symbolicdata.org/rdf) and linked that with the *PastConferences* data.
    -   (2016-03-01) Hans-Gert Gräbe fixed some flaws in the TransitiveGroups data, removed the deprecated repo 'symbolicdata' and tagged the remaining git repos *code*, *data*, *maintenance*, *publications* and *web* with tag v3.1 as snapshot of SD Version 3.1.

* * * * *

-   (2015-07-20) Hans-Gert Gräbe gave a [Presentation of SymbolicData](Publications "wikilink") at ACA 2015 in Kalamata, Greece.
-   (2015-04-07) Albert Heinles paper "The SDEval Benchmarking Toolkit" appeared in the March 2015 issue of the SIGSAM Communications in Computer Algebra.

* * * * *

-   (2015-04-06) Tim Römer recompiled also the old TestSets examples according to the new syntax. All stuff from the old format was cleaned up from the repos and the web pages were adjusted.
-   (2015-03-13) Tim Römer (Osnabrück, Normaliz team) provided a consolidated and "fingerprinted" version of the TestSets collection in a new format close related to the Normaliz notation.

* * * * *

-   (2015-02-17) Albert Heinle released a new version of [SDEval](SDEval "wikilink") and added a tutorial for interested users.

