---
layout: default
title: Systems
---

### CA Systems

#### About

The *CA Systems* Data collection contains data of type sd:CAS that represent CA systems that were at some time in the focus of SymbolicData followers. Most of the references now point with [owl:sameAs](http://www.w3.org/TR/owl-ref/#sameAs-def) to the corresponding entry in the [swmath.org](http://www.swmath.org/) collection of mathematical software.

#### Structure of the Data

-   The [CA Systems Knowledge Base](http://symbolicdata.org/RDFData/Systems.ttl)

  
  
Currently only as ttl-Download, a [Linked Data access](http://linkeddata.org) is on the way.

Namespaces:

-   owl: <http://www.w3.org/2002/07/owl#>
-   dct: <http://purl.org/dc/terms/>

Records of type **sd:CAS** have the following predicates

-   owl:sameAs URI reference to the [swmath.org](http://www.swmath.org/) collection.

or

-   sd:lastUpdate xsd:date
-   sd:hasURL URI - homepage of the CAS
-   dct:license URI - the software license
-   dct:creator foaf:Person - authors of the CAS (multiple)
-   dct:description Literal - a short description of the software

#### Changes

-   Changed to dct: prefix (HGG, 2013-07-31)
-   Changed to swmath references (HGG, 2013-07-14)
-   Update to dcterms ontology (HGG, 2013-07-14)

