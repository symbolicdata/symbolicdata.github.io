---
layout: default
title: BIB.Ontology
---

### BIB Ontology

#### Description

An informal description of the Ontology of the bibliographical references maintained within SymbolicData.

We use short references to publications and links to other sources (i.e., foreign URIs) with full bibliographical data. Additionally, we maintain our own short note about the relevance of the bibliographical reference for SymbolicData. See [People.Ontology](People.Ontology "wikilink") for references of authors.

The **naming scheme** for bibliographical references is <name_yearcnt> where *name* is the ([ASCII fixed](Naming "wikilink")) surname of the main author and *yearcnt* is the year of publication (last two digits) concatenated with a alphanumerical counter a..z to make the URI unique.

This information is collected in two knowledge bases, [Bibliography.ttl](http://symbolicdata.org/RDFData/Bibliography.ttl) (basic data and URI definition) and [Bib-References.ttl](http://symbolicdata.org/RDFData/Bib-References.ttl) (linking information to external stores of bibliographic data.

Records of type **sd:BIB** have the following additional predicates

-   standard predicates sd:createdAt, sd:createdBy, sd:lastModified (deprecated), rdfs:comment
-   dct:abstract Literal - a short
-   dct:creator foaf:Person - authors of the paper (multiple)
-   dct:title Literal - title of the paper
-   dct:issued dcterms:W3CDTF - year of publication

Links to external stores:

-   sd:hasCSentry URL - link to the entry in the [citeseer database](http://citeseerx.ist.psu.edu)
-   sd:hasGBBentry URL - link to the entry in the [Gröbner Bases Bibliography database](https://www.risc.jku.at/research/theorema/Groebner-Bases-Bibliography/)
-   sd:hasZBentry URL - link to the entry in the [ZMath database](http://www.zentralblatt-math.org/zmath/de)

#### Changes

-   References to external bib databases (Andreas, 2013-08-23)
-   Changed prefix to dct: (HGG, 2013-07-31)
-   Update to [dcterms](http://dublincore.org/documents/dcmi-terms) ontology (Andreas, 2013-02-25)

To be discussed:

-   Which foreign bib references to store? Is there any value in [doi's](http://www.doi.org)? How citeseer doi's are related to all that?
-   What's about [PND](http://de.wikipedia.org/wiki/Personennamendatei)?

