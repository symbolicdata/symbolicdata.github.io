---
layout: default
title: CASN
---

### Towards a Computer Algebra Social Network

Links to the currently available infrastructure

-   <http://symbolicdata.org:8891/sparql> - CASN SPARQL Endpoint
-   <http://symbolicdata.org/xodx> - the CASN xodx node (very experimental yet)
-   <http://symbolicdata.org/casn> - the CASN OntoWiki (aligned with Linked Data standards)
-   <http://www.fachgruppe-computeralgebra.de/rdf/> - the CASN node of the German CA Fachgruppe (no RDF store, hence also no Linked Data)
-   <http://symbolicdata.org/info> - different views on the CASN data (in progress)

#### Vision

The vision is a digitally supported Distributed Social Semantic Network within Open Science for the needs of the Computer Algebra Community.

The general architecture of such a network rests on three pilars:

-   A *common global database*, i.e., a distributed network of nodes that provide local information based on Linked Data principles,
-   *Channels* to harvest and maintain such local information on special topics, and
-   *Views* to integrate such harvested information into your favourite web site.

At the long run we plan to build up such a CASN using the architectural concepts of a [DSSN network stack](http://aksw.org/Projects/DSSN.html) designed and developed by Sebastian Tramp and Natanael Arndt (U Leipzig). A first implementation of these concepts is under development within the [Xodx project](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig).

#### Current State

For first steps in such a direction we

-   started the *CASN SD subproject*,
-   set up a *non public git repo* (due to privacy reasons, since a Social Network maintains also private data) for both data and tools,
-   operate another *Virtuoso based RDF data store* and a *[second OntoWiki](http://symbolicdata.org/casn) instance* to display the public part of our CASN data
-   and a *[second SPARQL Endpoint](http://symbolicdata.org:8891/sparql)* to explore that data.

For the moment the CASN data base contains different RDF graphs within the namespace <symbolicdata.org/casn/>, in particular

-   the RDF Graph <http://symbolicdata.org/casn/UpcomingConferences/> with informations about upcoming conferences - <symbolicdata.org/casn/Conference/> namespace with **sd:UpcomingConference** instances
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/tagungsankuendigungen/) in the Wordpress based site of the German CA Fachgruppe.
    -   Past conferences are moved in a slightly edited form to the RDF Graph <http://symbolicdata.org/casn/PastConferences/> for reference.
-   the RDF Graph <http://www.fachgruppe-computeralgebra.de/rdf/CAR-Beitraege.rdf> with information about articles in the CA-Rundbrief
    -   Entries of type sd:Reference are composed based on the [dcterms ontology](http://dublincore.org/documents/dcmi-terms/).
    -   The information is extracted using the [EasyRdf PHP library](http://www.easyrdf.org/) to be [displayed](http://www.fachgruppe-computeralgebra.de/rundbrief-beitraege/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <hhttp://www.fachgruppe-computeralgebra.de/rdf/WorkingGroups.rdf> with information about German CA working groups and related people
    -   Groups - instances of **sd:WorkingGroup** and **foaf:Group** - are related to affiliations - instances of **org:FormalOrganization** - by the predicate **org:subOrganizationOf**.
    -   People are referenced as <symbolicdata.org/Data/Person/> instances by predicate **org:hasMember**.
    -   The information is extracted using the [EasyRdf PHP library](http://www.easyrdf.org/) to be [displayed](http://www.fachgruppe-computeralgebra.de/arbeitsgruppen/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://symbolicdata.org/casn/SPP-Projekte/> with information about CA projects within the SPP 1489
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/projekte/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://symbolicdata.org/casn/Dissertationen/> with informations about dissertations in CA - <symbolicdata.org/casn/Dissertation/> namespace with **bibo:Thesis** instances.
    -   uses standard predicates dcterms:creator (value: URI in SD-Person), dcterms:title, dcterms:date, bibo:degree from the [bibo ontology](http://bibliontology.com).
    -   more predicates: sd:hasSupervisor, sd:hasReviewer(value: URI in SD-Person)
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/dissertationen/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://symbolicdata.org/casn/ConferenceReports/> with conference reports as published in the CA Rundbrief (in progress)
-   the RDF Graph <http://symbolicdata.org/casn/News/> with (few so far) Semantic Annotations to news from different online resources in the **sioc:BlogPost** format.

#### CASN and CA People - Local FOAF User Profiles

The main challenge to get a Social Network running is to get a sufficient number of stakeholders interested in the project.

As a first step we identify people involved with Computer Algebra. We maintain personal information about such people, i.e., potentially active users, in the RDF Graph <http://symbolicdata.org/Data/People/> as **foaf:Person** instances with URI structure <symbolicdata.org/Data/Person/LastName_Initials> and predicates

-   foaf:name - a string "FirstName LastName" (required)
-   foaf:homepage - a link to the homepage (optional)
-   sd:affiliation - a string "Organization, Location" (optional)
-   sd:country - a [dbpedia](http://dbpedia.org) URI (optional)

as a central resource of people URIs. This information was extracted from public sources, in particular conference announcements. Such an URI provides a "hook" for more information, that should be provided by the users or user communities themselves along the FOAF principles.

In a first step we try to identify communities (including "one person communities") that are interested to provide and maintain such FOAF based personal profiles about some aspects of their research activities. The [FOAF Project](http://www.foaf-project.org/) (FOAF = "friends of a friend") is a widely recognized and used standard to build up distributed networks of people with common interests.

-   See, e.g., how the [AKSW Working Group](http://aksw.org) has organized information about their research activities in such a way.
-   In particular AKSW provides RDF based information about personal activities, see, e.g., <http://aksw.org/AndreasNareike.rdf>.

Such FOAF Profiles are compiled by the German Fachgruppe for their (current and former) board members at <http://www.fachgruppe-computeralgebra.de/rdf/FOAF-Profiles>.

At <http://symbolicdata.org/Data/PersonalProfiles/> we maintain an RDF graph that provides links between sd:Person instances and known FOAF profiles.

As proof of the concept this information is used to display the [members of the board](http://www.fachgruppe-computeralgebra.de/fachgruppenleitung/) of the German Fachgruppe. This view is collected by the following workflow:

-   Use the SD Person list of the boards as local RDF graph <http://www.fachgruppe-computeralgebra.de/rdf/FGL-Boards/FGL.rdf>,
-   for each SD Person get the corresponding FOAF profile from the SD Personal Profile Links
-   display selected information from the FOAF profile

and [cached at the local web site](http://www.fachgruppe-computeralgebra.de/rdf/FGL-Boards/).

#### Some more thoughts about bootstrapping a distributed CASN

We set up a [first prototype](http://symbolicdata.org/xodx) to technically support such a social network upon the [Xodx implementation](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig).

-   A registered person has a **foaf:Person** FOAF Profile and a **sioc:UserAccount** instance not yet aligned with the remaining infrastructure.

This has further to be discussed and is not actively maintained at the moment.
