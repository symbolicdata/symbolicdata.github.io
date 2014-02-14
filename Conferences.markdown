---
layout: default
title: Conferences
---

### Conferences

We manage a database of announcements of upcoming conferences. See the files *Tagungsankuedigungen.ttl* in the repository.

Used ontologies:

-   ical: [Calendar Ontology](http://www.w3.org/2002/12/cal/ical)

Conferences are modeled as sd:Event with predicates

-   rdfs:label
-   ical:dtstart xsd:date
-   ical:dtend xsd:date
-   ical:location Literal
-   ical:description Literal
-   ical:organizer Literal
-   sd:engagedPeople sd:Person
-   sd:hasURL URL
-   sd:hasPaperDeadline xsd:date
-   sd:hasRegistrationDeadline xsd:date
-   sd:hasEarlyRegistrationDeadline xsd:date

We use *symbolicdata.org/Data/Conference* as prefix followed by a well established shortcut of the conference as naming scheme.
