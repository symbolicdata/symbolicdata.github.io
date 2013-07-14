---
layout: default
title: Systems
---

### CA Systems

#### About

The *CA Systems* Data collection contains URIs of CA systems that were at some time in the focus of SymbolicData followers. Most of the references point with [owl:sameAs](http://www.w3.org/TR/owl-ref/#sameAs-def) to the corresponding entry in the [swmath.org](http://www.swmath.org/) collection of mathematical software.

#### Structure of the Data

-   The [CA Systems Knowledge Base](http://symbolicdata.org/RDFData/Systems.ttl)

  
  
Currently only as ttl-Download, a [Linked Data access](http://linkeddata.org) is on the way.

**Systems Ontology:**

Records of type **sd:CAS** have the following additional predicates

-   owl:sameAs URI reference to the [swmath.org](http://www.swmath.org/) collection.

or

-   sd:lastUpdate xsd:date
-   sd:hasURL URI - homepage of the CAS
-   dcterms:license URI - the software license
-   dcterms:creator foaf:Person - authors of the CAS (multiple)
-   dcterms:description Literal - a short description of the software

#### Changes

-   Changed to swmath references (HGG, 2013-07-14)
-   Update to dcterms ontology (HGG, 2013-07-14)

