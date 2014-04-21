---
layout: default
title: OntoWiki
---

### OntoWiki

[OntoWiki](http://aksw.org/Projects/OntoWiki.html) is a Semantic Data Wiki as well as an Application Framework providing support for agile, distributed knowledge engineering scenarios developed by the [AKSW team](http://aksw.org) at Leipzig University. It facilitates the visual presentation of a knowledge base as an information map, with different views on instance data. It enables intuitive authoring of semantic content, with an inline editing mode for editing RDF content, similar to WYSIWIG for text documents.

More about OntoWiki:

-   [Project's Homepage](http://aksw.org/Projects/OntoWiki.html)
-   [Documentation](https://github.com/AKSW/OntoWiki/wiki)

OntoWiki is a PHP application build on top of the [Erfurt Semantic Web Application Framework](http://erfurt-framework.org/).

Best performance is achieved with the Virtuoso data store and Apache web server on a Linux based server infrastructure. This can easily be [locally installed](LocalSparqlEndpoint "wikilink") on the top of a standard Debian Linux distribution.

OntoWiki is under heavy development. It has known flaws in particular within the authentification and security concepts. This does not affect a local installation but has to be considered if you operate a publicly visible OntoWik instance.

#### Security issues

A central design principle of OntoWiki is to store the description of a particular Ontowiki instance as RDF graph
