---
layout: default
title: FanoPolytopes
---

### Fano Polytopes

#### About

These data refer to polytope classificational data collected within the [polymake community](http://polymake.org) mainly by Andreas Paffenholz und Benjamin Lorenz. [Another database](http://polymake.org/doku.php/data) interface directly incorporated into the polymake software was develope by Silke Horn.

The polymake project is maintained by Michael Joswig and Ewgenij Gawrilow.

The data for the Fano Polytopes Knowledge Base (Fano Polytope fingerprints, Febr 2016: 8630 instances) is extracted from (some of) the files from [Andreas Paffenholz's site](http://polymake.org/polytopes/paffenholz/www/fano.html). Right now we only extracted the data upto dimension 6, which has mainly two reasons:

-   the Fano Polytopes Knowledge Base is still in its experimental stage
-   for higher dimensions, metadata would have to be calculated (it's not in the resource files)

For both points (structure and semantics of the knowledge base, calcution of metadata) some more input from the community is needed.

#### Data Extraction

Once unzipped, each Fano Polytopes corresponds to a Polymake file. These files are XML files that contain firstly the points that define the Fano Polytope in question. Additionally, in some files there also is some metadata contained. Parsing theses files is really straight-forward. By translating the metadata into RDF and uploading it onto our Virtuoso server, we can give a first impression of the power of RDF+SPARQL.

#### Structure of the Data

-   The Fano Polytopes Knowledge Base [for download](http://symbolicdata.org/RDFData/FanoPolytopes.ttl) (5.2 MB) and as [Linked Data](http://symbolicdata.org/Data/FanoPolytopes/)
-   The Resources are available as zip files directly from the polymake servers
-   [FanoPolytopes.Ontology](FanoPolytopes.Ontology "wikilink") - an informal description of the Ontology of the Fano Polytopes Knowledge Base developed so far.

