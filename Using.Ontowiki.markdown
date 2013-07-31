---
layout: default
title: Using.Ontowiki
---

### Using a Virtuoso based OntoWiki

#### Goal of this page

#### Prerequisites

We assume that you have a Virtuoso database running on your localhost, can access the Virtuoso console, usually with the command

  
isql-vt <port> <user|default dba> <password>

and have an instance of Ontowiki rolled out within your webserver running at localhost.

#### FAQ

Q: There is a knowledge base (graph) <URI> loaded into Virtuoso but not yet visible in OntoWiki.

A: Issue on Virtuoso console the command

  
sparql create silent graph <URI> ;


