---
layout: default
title: Dissertations
---

## Dissertations in Computer Algebra

Used ontologies:
* bibo: [The Bibliographic Ontology (bibo)](http://lov.okfn.org/dataset/lov/vocabs/bibo)
* dct: [DCMI Metadata Terms (dcterms)](http://lov.okfn.org/dataset/lov/vocabs/dcterms)

### Data Model

Dissertations are modeled as **bibo:Thesis**. The naming scheme is &lt;author_year&gt; (e.g. Mueller_12) where *author* is the full surname transformed to [true ASCII strings](Naming "wikilinks"). 
    
Predicates:
* bibo:degree bibo:ThesisDegree - The thesis degree (bibo_degrees:phd or bibo_degrees:habil)
* bibo:institution Literal - The institution where the thesis was supervised.
* dct:abstract - Reference where the thesis abstract was published (mainly CA Rundbrief)
* dct:creator sd:Person - Thesis author 
* dct:title Literal - Thesis title
* dct:date xsd:year - Date of thesis submission 
* sd:hasURL - URL of the thesis
* sd:hasSupervisor sd:Person - Supervisor(s) of the thesis
* sd:hasReviewer sd:Person - Reviewer(s) of the thesis

### Structure of the Data 

* See the files *Dissertations.ttl* and *ThesisOntology.ttl* (partial description of our application of the bibo ontology) in the repository.
* The Dissertations Knowledge Base [for download](http://symbolicdata.org/RDFData/Dissertations.ttl) and as [Linked Data](http://symbolicdata.org/Data/Dissertations/).
* The Thesis Ontology [for download](http://symbolicdata.org/RDFData/ThesisOntology.ttl).
* The [presentation of the data](http://symbolicdata.org/info/dissertation.php) within the CASN Demonstration Site.
