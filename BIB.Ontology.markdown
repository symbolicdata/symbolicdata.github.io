---
layout: default
title: BIB.Ontology
---

### BIB Ontology

#### Description

An informal description of the Ontology of the bibliographical references maintained within SymbolicData.

We use short references to publications and links to other sources (i.e., foreign URIs) with full bibliographical data. Additionally, we maintain our own short note about the relevance of the bibliographical reference for SymbolicData. See [People.Ontology](People.Ontology "wikilink") for references of authors.

The **naming scheme** for bibliographical references is <name_yearcnt> where *name* is the ([ASCII fixed](Naming "wikilink")) surname of the main author and *yearcnt* is the year of publication (last two digits) concatenated with a alphanumerical counter a..z to make the URI unique.

Uses dcterms: <http://dublincore.org/documents/dcmi-terms>

Records of type **sd:BIB** have the following additional predicates

-   standard predicates sd:createdAt, sd:createdBy, sd:lastModified (deprecated), rdfs:comment
-   sd:hasAbstract Literal - a short
-   sd:hasAuthor foaf:Person - authors of the paper (multiple)
-   sd:hasTitle Literal - title of the paper
-   sd:hasYear xsd:year - year of publication

#### Changes

-   Update to dcterms ontology (Andreas, 2013-02-25)

To be discussed:

-   Which foreign bib reference? Is there any value in [doi's](http://www.doi.org)?
-   What's about [PND](http://de.wikipedia.org/wiki/Personennamendatei)?

