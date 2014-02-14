---
layout: default
title: People
---

### People, Groups and Affiliations

See the files *People.ttl* and *Groups.ttl* in the repository.

Used ontologies:

-   foaf: [FOAF Vocabulary](http://lov.okfn.org/dataset/lov/details/vocabulary_foaf.html)
-   org: [ORG - An organization ontology](http://lov.okfn.org/dataset/lov/details/vocabulary_org.html)
-   skos: [SKOS - Simple Knowledge Organization System](http://lov.okfn.org/dataset/lov/details/vocabulary_skos.html)

#### People

People are modeled as **foaf:Person**. The naming scheme is <familyName_initials> (e.g. Mueller\_JH) where *name* is the full surname, initials are the concatenated initials of the other name parts with a further letter to make the identifier unique, transformed to [true ASCII strings](Naming "wikilink").

Predicates:

-   foaf:name Literal: Value is of the form "familyName, givenName". Used as label.
-   foaf:mbox Literal: Email address
-   foaf:homepage URL: Homepage. This is a link to more information about the person in the Linked Data sense.

The instances of that class cover any person, in particular authors of papers listed in the SymbolicData [Bibliography](Bibliography "wikilink") references system.

People involved with SymbolicData have additionally the type **sd:Contributor** with predicates

-   foaf:nick Literal: Nick name within SymbolicData
-   sd:hasContributed Literal: Record about contributions to SymbolicData
-   sd:lastModified xsd:date

The knowledge base *CAFG-Intern.ttl* contains more detailed information about people and will be available only for internal purposes (not yet realized). Part of that information is used to display the [Board of the German CA-Fachgruppe](http://www.fachgruppe-computeralgebra.de/fachgruppenleitung/).

Changes:

-   2013-03-09 (graebe): sd:Author removed, sd:Contributor added, foaf:Group changed to org:Organization, several properties changed to the FOAF Vocabulary

#### Groups and Affiliations

This is yet experimental. CA Working Groups are modeled as **org:Organization**, larger organizational units are modeled as **org:FormalOrganization**. For the relations between them we use the predicate *org:subOrganizationOf*. We use predicates from the skos-Ontology as [recommended by the org ontology standards](http://www.epimorphics.com/public/vocabulary/org.html). There is not yet an established naming scheme, but we use *symbolicdata.org/Data/Group* prefix for CA Working Groups and *symbolicdata.org/Data/Organization* prefix for formal organizations.

Predicates:

-   skos:prefLabel Literal: the preferred name of the Unit
-   org:subOrganizationOf org:FormalOrganization
-   org:hasMember foaf:Person from the People data base
-   foaf:homepage URL

Part of the information about groups was extracted from the Web Site of the German CA-Fachgruppe that offered also keywords on the working topics. Those entries have additionally the predicates

-   foaf:topic\_interest Literal: Topics of interest (to be switched from Literals to URIs)
-   sd:hasTag <http://symbolicdata.org/Data/Tag/CAFG-Listing>

