---
layout: default
title: Events.2013-08
---

[Main\_Page](Main_Page "wikilink") \> [Events](Events "wikilink")

### 27.-28. August 2013 - Workshop on SymbolicData Design in Leipzig.

We invited for a second Workshop to discuss progress and prospects of the SymbolicData Project and to resume the work done within the [E-Science Benchmarking Project](Projects.EScience "wikilink"). The Workshop took place in the main building (Paulinum) of the Leipzig University.

### Participants

-   Hans-Gert Gräbe, Andreas Nareike (Leipzig, local organization)
-   Ulf Schöneberg, Hagen Chrapary, Wolfram Sperber (ZBl Math Berlin, swMath project)

### Program

The program addressed different use cases, efforts and aspects of RDF based concepts of inter community communication along the needs of scientific communities in Symbolic Computing.

**Tuesday, August 27, 2013**

-   9:30-10:30 Welcome
-   10:30-12 Presentation of the state of the SymbolicData project (Hans-Gert Gräbe)
-   12-14 Lunch
-   14-15 Tutorial - Using Symbolicdata with Sage via the **sdsage package** (Andreas Nareike)
-   15-16 The projects [E-Science Saxonia](http://www.escience-sachsen.de) and the [Saxonian E-Science Research Platform](https://escience.htwk-leipzig.de/) (Todor Tontchev, HTWK Leipzig)
-   16-17 Natural Language Processing approaches to discover and understand mathematical formulas in research texts (Ulf Schöneberg)
-   17-19 Inter project aspects - cooperation with [swmath](http://www.swmath.org)
-   evening - dinner, Get Together

**Wednesday, August 28, 2013**

-   9-13 Discussion about a future cooperation between the swmath project and SymbolicData
    -   [Zeitschriftendatenbank](http://www.dnb.de/EN/Wir/Kooperation/zdb/zdb_node.html) der DNB
    -   <http://lobid.org> - der Linked-Open-Data-Dienst des Hochschulbibliothekszentrums des Landes Nordrhein-Westfalen (hbz)
-   13 End of the Workshop

Links:

-   <http://lov.okfn.org>
-   <http://msc2010.org/mscwork/>

### A Short Summary

The workshop was designed as final milestone of the *E-Science Benchmarking Project* promoted for 12 month within the *E-Science Saxony Framework*. Due to the scarce resonance the program finally focused on cross connections between SymbolicData and the swmath project.

In a first talk **Hans-Gert Gräbe** presented the state of the SymbolicData project. We are close to a first release of version 3, that marks a milestone step across the implementation of semantic techniques with SymbolicData. We strongly use RDF and Linked Data principles in the organisation of the data. These principles are also reflected in the presentation of the data at symbolicdata.org. All resources can be accessed via http/rdf+xml and a Sparql endpoint allows for navigation in the metadata. This can be installed also on a localhost and thus can be integrated into a local benchmarking or profiling infrastructure (best using python as scripting language and a web server at localhost).

**Andreas Nareike** presented in a second talk his prototypical integration of the Polynomial Systems subproject with sagemath and SymbolicData as a sage package *sdsage* that smoothly integrates both the global SD network infrastructure and a local installation into the sagemath process. One can load data and metadata transparently into sage objects and process them as mathematical objects in the usual way within sage.

**Todor Tontchev** presented the E-Science Saxony Framework, a centralized platform designed to organize collaborative research. Note that within SymbolicData we favour another approach - an RDF based Distributed Semantic Social Network as developed within the [DSSN project](http://aksw.org/Projects/DSSN.html) of the AKSW group at Leipzig University. First promising experiments show that this is indeed a visionary inter-community approach, but it requires more efforts to implement relevant concepts on top of the already existing communication infrastructure.

Such a DSSN can interrelate management processes (collaborative editing, search) of different RDF based scientific data as, e.g., bibliographical data (swmath, bibsonomy), project data (there exist project ontologies on the level of EU framework programs) or classificational data (the msc2010 is almost RDF ready). Such perspectives were the main focus of the discussions at the workshop.

**Ulf Schöneberg** gave a talk about effort at the ZBMath to discover and understand mathematical formulas in Zentralblatt mathematical reviews, mixing classical colocation approaches with semantic enriched opportunities of latex mark-up. This research is part of larger efforts within, e.g., the [OpenMath](http://www.openmath.org) activities.

We discussed in great detail the potential interplay between

-   the efforts at ZBMath to organize access to data in well established RDF based formats,
-   the SymbolicData intercommunity efforts and experience with Linked Data standards, Sparql endpoints, Virtuoso and Ontowiki based local installations,
-   ongoing efforts of the DNB and other libraries (SLUB Dresden, UB Leipzig) to reshape their catalogue data towards Linked Data standards and get them interoperating within the [GND project](http://www.dnb.de/DE/Standardisierung/GND/gnd_node.html).

