---
layout: default
title: People
---

### People, Groups and Affiliations

See the files *People.ttl* in the repository.

Used ontologies:

-   foaf: [FOAF Vocabulary](http://lov.okfn.org/dataset/lov/details/vocabulary_foaf.html)

#### People

People are modeled as **foaf:Person**. The naming scheme is <familyName_initials> (e.g. Mueller\_JH) where *name* is the full surname, initials are the concatenated initials of the other name parts with a further letter to make the identifier unique, transformed to [true ASCII strings](Naming "wikilink").

Predicates:

-   foaf:name Literal: Value is of the form "familyName, givenName". Used as label.
-   foaf:homepage URL: Homepage. This is a link to more information about the person in the Linked Data sense.

The instances of that class cover any person, in particular authors of papers listed in the SymbolicData [Bibliography](Bibliography "wikilink") references system. Note that the provided link is not necessarily up to date.

  
2014-03-08 HGG: The field foaf:mbox was removed from the public repo due to privacy reasons.

We plan within the [CASN](CASN "wikilink") extension to offer the people to maintain their own ProfileDocument either within the CA Semantic Network of at another Linked Data aware site of their own choice.

#### Contributions

Contributions to SymbolicData are acknowledged within a knowledge base *Contributions.ttl*. People involved with SymbolicData have additionally the type **sd:Contributor** with predicates

-   foaf:nick Literal: Nick name within SymbolicData
-   sd:hasContributed Literal: Record about contributions to SymbolicData
-   sd:lastModified xsd:date

  
2014-03-08 HGG: This information was separated to its own knowledge base.

#### Personal Accounts, Groups and Affiliations

Used ontologies:

-   org: [ORG - An organization ontology](http://lov.okfn.org/dataset/lov/details/vocabulary_org.html)
-   skos: [SKOS - Simple Knowledge Organization System](http://lov.okfn.org/dataset/lov/details/vocabulary_skos.html)

This is yet experimental and was moved to a non-public repo due to privacy reasons. We try to shape and sharpen the concepts on the target of German CA Working Groups and Projects within the [SPP 1489](http://www.computeralgebra.de/). Part of the information is available via the [CASN|SymbolicData CASN SPARQL endpoint]( "wikilink").

The knowledge base *CAFG-Intern.ttl* contains more detailed information about people. Part of that information is used to display the [Board of the German CA-Fachgruppe](http://www.fachgruppe-computeralgebra.de/fachgruppenleitung/).

Predicates of foaf:Person

-   foaf:name, foaf:mbox, foaf:phone, foaf:homepage, foaf:familyName, foaf:givenName from the FOAF Ontology
-   foaf:image URI - a link to a picture of that person within the database of the CA-Fachgruppe
-   foaf:member foaf:Group - indicates that the person belongs to different groups

foaf:Group - used to group people according to different contexts as, e.g.

-   sdt:FGL2005, sdt:FGL2008, sdt:FGL2011, sdt:FGL2014 - collection of members of the board of the CA-Fachgruppe for the different election periods.

The knowledge base *Groups.ttl* contains informations about German CA Working Groups and (to come up) Projects within the [SPP 1489](http://www.computeralgebra.de/).

CA Working Groups are modeled as **org:Organization**, larger organizational units are modeled as **org:FormalOrganization** (and will be more tightly aligned with the [DBpedia](http://dbpedia.org) knowledge base). For the relations between them we use the predicate *org:subOrganizationOf*. We use predicates from the skos-Ontology as [recommended by the org ontology standards](http://www.epimorphics.com/public/vocabulary/org.html). There is not yet an established naming scheme, but we use *symbolicdata.org/Data/WorkingGroup* prefix for CA Working Groups, *symbolicdata.org/Data/Project* prefix for CA Projects and *symbolicdata.org/Data/Organization* prefix for formal organizations.

Predicates:

-   skos:prefLabel Literal: the preferred name of the Unit
-   org:subOrganizationOf org:FormalOrganization
-   org:hasMember foaf:Person from the People data base
-   foaf:homepage URL

Part of the information about groups was extracted from the Web Site of the German CA-Fachgruppe that offered also keywords on the working topics. Those entries have additionally the predicates

-   foaf:topic\_interest Literal: Topics of interest (to be switched from Literals to URIs)
-   sd:hasTag <http://symbolicdata.org/Data/Tag/CAFG-Listing>

