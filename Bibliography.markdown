---
layout: default
title: Bibliography
---

### Bibliographical Notes

Note that the concept of Bibliographical Notes is not yet at the end where it should be.

* * * * *

#### Concept

Bibliographical Notes are designed to collect places in the literature where the different data collected within SymbolicData are referenced. Such a system of references is under heavy development and hence a good candidate really to stress the intercommunity aspects.

Related projects are, e.g.:

-   [swmath](http://www.swmath.org/)
-   [Groebner Bases Bibliography](http://www.ricam.oeaw.ac.at/Groebner-Bases-Bibliography/index.php)
-   [bibsonomy.org](http://www.bibsonomy.org)
-   [citeseer](http://citeseerx.ist.psu.edu)

All we need are sentences of the form

  
TheVerySpecialSDExample was\_cited\_in TheVeryInterestingPaper .

TheVeryInterestingPaper has\_author FranzBeckenbauerTheMathematician .

In such sentences [URIs](https://en.wikipedia.org/wiki/Uniform_resource_identifier) play a central role that are - according to the [Linked Data Principle](https://en.wikipedia.org/wiki/Linked_Data) - in the best way world wide unique and cured by an authority providing reliable information

-   TheVerySpecialSDExample - URI of our example
    -   provided by SymbolicData
-   TheVeryInterestingPaper, FranzBeckenbauerTheMathematician - URI of the paper resp. the author
    -   best provided by a central bibliographical service and used by SymbolicData

For the moment we provide own URIs both for [People](People "wikilink") (incl. authors) and bibliographical references with minimal own information to identify people and bibliographical references later on in central data stores.

Note that in a fully-fledged Linked Data world we easily could ask questions as

  
List\_all ?VerySpecialSDExamples was\_cited\_in ?Papers has\_author FranzBeckenbauerTheMathematician .

without storing sentences of the second kind, since we can ask remotely the bibliographical service

  
List\_all ?Papers has\_author FranzBeckenbauerTheMathematician .

For more details see the knowledge bases

-   [Bibliography.ttl](http://symbolicdata.org/RDFData/Bibliography.ttl) for URIs and short description of the bibliographical references used within SymbolicData
-   [BIB-References.ttl](http://symbolicdata.org/RDFData/BIB-References.ttl) for links of these data to external collections of bibliographical data (citeseer, GB Bibliography and ZBMath for the moment)
    -   Note that the object links comply to the Linked Data rules, i.e., HTTP Get serves detailed information about the bibliographical resource, but not as standardized RDF but in special (to each source) formats.

#### Ontology

[BIB.Ontology](BIB.Ontology "wikilink") - an informal description of the Ontology developed so far

#### Open Problems

-   Citeseer uses doi attributes that cannot obviously matched with the [Wikipedia DOI description](http://de.wikipedia.org/wiki/Digital_Object_Identifier). Find out more about that.

