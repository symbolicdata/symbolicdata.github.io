---
layout: default
title: CASN
---

### Towards a Computer Algebra Social Network

The vision is a digitally supported distributed social network within Open Science for the needs of the Computer Algebra Community.

We set up a [first prototype](http://symbolicdata.org/xodx) to technically support such a social network upon the [Xodx implementation](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig) of the [DSSN network stack](http://aksw.org/Projects/DSSN.html) designed and developed by Sebastian Tramp (U Leipzig).

This [xodx instance](http://symbolicdata.org/xodx) (see [xodx](xodx "wikilink") for a list of remarks how it is configured) runs on a second Virtuoso store that hosts both the xodx communication artefacts (within the namespace <symbolicdata.org/xodx/>) and several other RDF graphs within the namespace <symbolicdata.org/casn/> served by a [second OntoWiki](http://symbolicdata.org/casn), in particular

-   informations about upcoming conferences - <symbolicdata.org/casn/Conference/> namespace
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/tagungsankuendigungen/) in the Wordpress based site of the CA Fachgruppe
-   information about German CA working groups and people - extending the <symbolicdata.org/Data/Person/> namespace
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/arbeitsgruppen/) in the Wordpress based site of the CA Fachgruppe
    -   Note that the people are referenced by the <symbolicdata.org/Data/Person/> namespace. There is a second knowledge base <http://symbolicdata.org/casn/CAFG-Intern/> with more detailed information about the people within German CA working groups. This information is considered as more private and not delivered by Linked Data principles but only available by SPARQL query to that special knowledge base.
-   information about articles in the CA-Rundbrief - <symbolicdata.org/casn/BIB> namespace
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/rundbrief-beitraege/) in the Wordpress based site of the CA Fachgruppe

and plan to collect

-   (meta) informations about new publications (using the Dublin Core Ontology and references to commonly used foreign bibliographical stores)

Here are the links to the currently available infrastructure

-   <http://symbolicdata.org:8891/sparql> - CASN SPARQL Endpoint
-   <http://symbolicdata.org/xodx> - the CASN xodx node
-   <http://symbolicdata.org/casn> - the CASN OntoWiki (to be aligned with Linked Data standards)

### Some thoughts about bootstrapping CASN

The bootstrap process assumes that in the beginning there will be a very (!) small group of educated people who manages the CASN data both in the <symbolicdata.org/casn/> namespace via usual OntoWiki supported RDF techniques (a greater amount of data) and via the xodx mechanisms. This has to be clarified.
