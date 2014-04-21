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

A central design principle of OntoWiki is to store the description of a particular OntoWiki instance (Users, Usergroups, Models, Actions) as RDF graph <localhost/OntoWiki/Config/> within that instance. Hence for a user with appropriate rights (usually within the AdminGroup) it is very easy to administrate roles and rights on that particular OntoWiki instance using the same OntoWiki edit facilities a for any of the other models. In a standard installation this model is shown only to members of the AdminGroup.

A built-in role 'SuperAdmin' is directly mapped onto the database user and its credentials. Any action of any user is handed over to the 'SuperAdmin' who checks the rights and executes that action if allowed. Several built-in functions, in particular HTTP-GET requests - casually even requests changing the state of the database -, are directly forwarded to that SuperAdmin. We observed circumstances where the

We recommend:

-   to create another account within the AdminGroup and remove the Admin user.
-   to back up regularly the users and the models parts in RDF format in such a way that they can be restored within a new <localhost/OntoWiki/Config> by 'Load Data from a File'.

