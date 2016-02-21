---
layout: default
title: FanoPolytopes
---

### Fano Polytopes

#### About

These data refer to polytope classificational data collected within the [polymake community](http://polymake.org) mainly by Andreas Paffenholz und Benjamin Lorenz. [Another database](http://polymake.org/doku.php/data) interface directly incorporated into the polymake software was develope by Silke Horn.

The polymake project is maintained by Michael Joswig and Ewgenij Gawrilow.

The data for the Fano Polytopes Knowledge Base (Fano Polytope fingerprints, Febr 2016: 8630 instances) is extracted from (some of) the files from [Andreas Paffenholz's site](http://polymake.org/polytopes/paffenholz/www/fano.html). Right now we only extracted the data upto dimension 6, which has mainly two reasons:

-   The Fano Polytopes Knowledge Base is still in its experimental stage
-   For higher dimensions, metadata would have to be calculated (it's not in the resource files).

For both points (structure and semantics of the knowledge base, calcution of metadata) some more input from the community is needed.

#### Data Extraction

We downloaded the compressed polymake files and extracted some information from them. The files of dimensions greater 6 significantly lack data to extract while having a total file size that is much greater (compared to lower dimensions). So right now only dimension 3 to 6 are done to avoid adding huge amount of data with only little meaning.

The Fano Polytope fingerprints were compiled by **Andreas Nareike** in 2013 along the following road map:

-   Once unzipped, each Fano Polytope is given as XML file in *polymake* format that contains the points that define the Fano Polytope in question. Additionally, some files contain precomputed metadata.
-   Parsing these files is really straight-forward.

The search capabilities of SPARQL queries in these fingerprint data give a first impression of the power of RDF+SPARQL.

The transformation code is available from our [maintenance repo](https://github.com/symbolicdata/maintenance).

#### Structure of the Data

-   The Fano Polytopes Knowledge Base [for download](http://symbolicdata.org/RDFData/FanoPolytopes.ttl) and as [Linked Data](http://symbolicdata.org/Data/FanoPolytopes/)
-   The Resources are available as zip files directly from the polymake servers
-   [FanoPolytopes.Ontology](FanoPolytopes.Ontology "wikilink") - an informal description of the Ontology of the Fano Polytopes Knowledge Base developed so far.

