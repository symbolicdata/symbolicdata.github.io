---
layout: default
title: People.Ontology
---

### People Ontology

An informal description of the Ontology of the People involved and addressed within SymbolicData.

Used ontologies:

-   foaf: [FOAF Vocabulary](http://xmlns.com/foaf/spec/)
-   org: [ORG - An organization ontology](http://www.w3.org/TR/vocab-org)
-   skos: [SKOS - Simple Knowledge Organization System](http://www.w3.org/2004/02/skos/)

Changes:

-   2013-03-09 (graebe): sd:Author removed, sd:Contributor added, foaf:Group changed to org:Organization, several properties changed to the FOAF Vocabulary

**Classes:**

-   foaf:Person - any person, in particular authors of papers listed in the SymbolicData [Bibliography](Bibliography "wikilink") references system
    -   The naming scheme is <name_initials> where *name* is the full surname, initials are the concatenated initials of the other name parts with a further letter to make the identifier unique, transformed to [true ASCII strings](Naming "wikilink").
-   org:Organization - organization of a sd:Contributor.
    -   A naming scheme is not (yet) defined.
-   sd:Contributor - a foaf:Person that contributed to SymbolicData

**Common Predicates:**

-   foaf:name Literal: "name, firstname"
-   foaf:Person org:memberOf org:Organization: relation of a person to an organization

**sd:Contributor**

-   foaf:homepage URI: URL
-   foaf:mbox Literal: email
-   sd:hasContributed Literal: What the person contributed
-   sd:hasStatus Literal: - when the person worked within the SymbolicData Project (no complete record)
-   sd:lastModified xsd:date: last modification of the record

