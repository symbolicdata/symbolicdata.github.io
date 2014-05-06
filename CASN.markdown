---
layout: default
title: CASN
---

### Towards a Computer Algebra Social Network

The vision is a digitally supported distributed social network within Open Science for the needs of the Computer Algebra Community.

We set up a [first prototype](http://symbolicdata.org/xodx) to technically support such a social network upon the [Xodx implementation](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig) of the [DSSN network stack](http://aksw.org/Projects/DSSN.html) designed and developed by Sebastian Tramp (U Leipzig).

This [xodx instance](http://symbolicdata.org/xodx) runs on a second Virtuoso store that hosts both the xodx communication artefacts (within the namespace <symbolicdata.org/xodx/>) and several other RDF graphs within the namespace <symbolicdata.org/casn/> served by a [second OntoWiki](http://symbolicdata.org/casn), in particular

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
-   <http://symbolicdata.org/xodx> - the CASN xodx node
-   <http://symbolicdata.org/casn> - the CASN OntoWiki (to be aligned with Linked Data standards)

### Some thoughts about bootstrapping CASN

The bootstrap process assumes that in the beginning there will be a very (!) small group of educated people who manages the CASN data both in the <symbolicdata.org/casn/> namespace via usual OntoWiki supported RDF techniques (a greater amount of data) and via the xodx mechanisms. This has to be clarified.
