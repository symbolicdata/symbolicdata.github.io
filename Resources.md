---
layout: default
title: Resources
---

### Resources

#### Main project

Within the main project we manage the following resources:

-   This Web site for background information and informal descriptions
    -   A [poster](http://symbolicdata.org/Uploads/overview-poster.pdf) displays the overall structure and embedding of the project
-   A [Google mailing list](https://groups.google.com/forum/#!forum/symbolicdata)
-   A [github organizational account](https://github.com/symbolicdata)
    -   We use the integration manager workflow, hence look up for the forks of the master repo at the github accounts of SymbolicData followers for more recent information.
    -   [More](Using.Git "wikilink") about the way how we use git
-   Some docu at [readthedocs.org](http://symbolicdata.readthedocs.org).
-   Primary data as [XML Resources](http://symbolicdata.org/XMLResources) and [other Resources](http://symbolicdata.org/OtherResources) available (e.g.) via HTTP Get.
-   Primary meta data in RDF format, accessible by [Linked Data](http://linkeddata.org) standards.

  
Try out

`curl -LH "Accept: application/rdf+xml" `[`http://symbolicdata.org/Data/Ideal/Buchberger-87.Homog`](http://symbolicdata.org/Data/Ideal/Buchberger-87.Homog)

  
to get the Buchberger-87.Homog meta data from the sd:Ideal knowledge base in rdf/xml format by a simple HTTP Get request to the URI

-   An [instance of OntoWiki](http://symbolicdata.org/Data) to present and maintain these primary RDF Metadata.
    -   [OntoWiki](OntoWiki "wikilink") is a tool providing support for agile, distributed knowledge engineering scenarios developed by the [AKSW team](http://aksw.org) at the Leipzig University. It facilitates the visual presentation of a knowledge base as an information map, with different views on instance data. It enables intuitive authoring of semantic content, with an inline editing mode for editing RDF content, similar to WYSIWIG for text documents.
-   A [SPARQL endpoint](http://symbolicdata.org:8890/sparql) to explore the primary RDF Metadata.
    -   [More](QuickStart "wikilink") about the way how to use Sparql
    -   How to set up your [local Sparql endpoint](LocalSparqlEndpoint "wikilink") on a server running debian and apache
-   Dumps according to our [Backup strategy](Backups "wikilink").
-   CASN - Towards a *Computer Algebra Social Network*
    -   The vision is a digitally supported [distributed social semantic network](CASN "wikilink") within Open Science for the needs of the Computer Algebra Community.
    -   Our [info page](http://symbolicdata.org/info) - to provide different views on the CASN data as "proof of concept" (the php code is as "best practice experience" available from our github repo) 

