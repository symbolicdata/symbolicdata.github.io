---
layout: default
title: People.Ontology
---

### People Ontology

An informal description of the Ontology of the People involved and addressed within SymbolicData.

We use the [FOAF Ontology](http://www.foaf-project.org/), in particular the classes **foaf:Person** and **foaf:Group** for people and groups. To specify authors of papers within our BIB collection there is another class **sd:Author**.

The **naming scheme** for people is <name_initials> where *name* is the full surname, initials are the concatenated initials of the other name parts with a further letter to make the identifier unique, transformed to [true ASCII strings](Naming "wikilink").

Uses foaf: <http://xmlns.com/foaf/0.1/>

They have the following additional predicates

-   standard predicates sd:hasEmail, sd:lastModified, rdfs:comment
-   sd:hasURLLiteral Literal - URLs as Literals (may be changed in the future)
-   sd:hasAffiliation foaf:Group - Person belongs to a Group

Relation to the SymbolicData Project

-   sd:hasContributed Literal - what Person has contributed
-   sd:hasShortName Literal - short name of the Person used within createdBy attribute in XMLResource records
-   sd:hasStatus Literal - how long Person worked active within the SymbolicData Project

