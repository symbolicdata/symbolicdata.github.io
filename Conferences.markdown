---
layout: default
title: Conferences
---

### Conferences

We manage records of announcements of [upcoming conferences](http://symbolicdata.org/Data/UpcomingConferences/) and information files about [past conferences](http://symbolicdata.org/Data/PastConferences/). See the files *UpcomingConferences.ttl* and *PastConferences.ttl* [in the repository](http://symbolicdata.org/RDFData/).

Used ontologies:

-   ical: [Calendar Ontology](http://lov.okfn.org/dataset/lov/details/vocabulary_cal.html)
-   swc: [<http://data.semanticweb.org/ns/swc/ontology>\# Semantic Web Conference Ontology] (for detailed conference reports)

Conferences are modeled as **sd:Event** resp. **sd:UpcomingConference** with predicates

Conference venue

-   rdfs:label
-   ical:dtstart xsd:date
-   ical:dtend xsd:date
-   ical:location Literal - location of the conference
-   ical:description Literal - a description of the conference
-   ical:url URI - URL of the conference

Deadlines

-   sd:hasAbstractsDeadline xsd:date
-   sd:hasEarlyRegistrationDeadline xsd:date
-   sd:hasPaperDeadline xsd:date
-   sd:hasRegistrationDeadline xsd:date

People involved with the conference

-   ical:contact sd:Person
-   sd:hasGeneralChair sd:Person
-   sd:hasOrganizers sd:Person
-   sd:hasProgramChair sd:Person
-   sd:hasProgramCommittee sd:Person
-   sd:invitedSpeakers sd:Person

Additional information about past conferences

-   sd:hasCARReport Literal - reference to a conference report in the CA Rundbrief of the German Fachgruppe
-   sd:hasDetailedRecord URI - a detailed record about the conference using the swc ontology
    -   see, e.g., <http://symbolicdata.org/rdf/Conferences/CICM-15.rdf>

We use <symbolicdata.org/Data/Conference> as namespace prefix followed by a well established shortcut of the conference as naming scheme.
