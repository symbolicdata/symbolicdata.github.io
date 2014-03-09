---
layout: default
title: CASN
---

### Towards a Computer Algebra Social Network

The vision is a digitally supported distributed social network within Open Science for the needs of the Computer Algebra Community.

We plan to build a [first prototype](http://symbolicdata.org/CASN) to technically support such a social network upon the [Xodx implementation](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig) of the [DSSN network stack](http://aksw.org/Projects/DSSN.html) designed and developed by Sebastian Tramp (U Leipzig).

For the moment we set up an [xodx instance](http://symbolicdata.org/CASN) served by a second OntoWiki (not yet available by Linked Data standards) running on a second Virtuoso store that contains

-   informations about upcoming conferences
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/tagungsankuendigungen/) in the Wordpress based site of the CA Fachgruppe
-   information about German CA working groups
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/arbeitsgruppen/) in the Wordpress based site of the CA Fachgruppe
-   information about articles in the CA-Rundbrief
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/rundbrief-beitraege/) in the Wordpress based site of the CA Fachgruppe

and plan to collect

-   (meta) informations about new publications (using the Dublin Core Ontology and references to commonly used foreign bibliographical stores)

Here are the links to the currently available infrastructure

-   <http://symbolicdata.org:8891/sparql> - CASN SPARQL Endpoint
-   <http://symbolicdata.org/CASN-OW> - CASN OntoWiki

* * * * *

There is a project to collect informations about conferences served at a Semantic Mediawiki - <http://openresearch.aksw.org>. HGG, 2013-02-21
