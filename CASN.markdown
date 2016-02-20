---
layout: default
title: CASN
---

### Towards a Computer Algebra Social Network

Links to the currently available infrastructure

-   The SymbolicData RDF Store (aligned with Linked Data standards)
    -   <http://symbolicdata.org:8890/sparql> - SPARQL Endpoint
    -   <http://symbolicdata.org/Data> - the OntoWiki based browser frontend
-   CASN nodes: At such nodes different parties maintain RDF based information and provide it to the public that can be harvested and included into remote applications (no RDF store, hence also no Linked Data)
    -   <http://www.fachgruppe-computeralgebra.de/rdf/> - the CASN node of the German CA Fachgruppe
    -   <http://symbolicdata.org/rdf> - the CASN node of the SymbolicData Project
-   <http://symbolicdata.org/info> - different views on the CASN data
    -   Learn more about such applications from the code in our *github web repo* at <https://github.com/symbolicdata/web>

#### Vision

The vision is a digitally supported Distributed Social Semantic Network within Open Science for the needs of the Computer Algebra Community.

The general architecture of such a network rests on three pilars:

-   A *common global database*, i.e., a distributed network of nodes that provide local information based, best served at [Linked Data standards](https://en.wikipedia.org/wiki/Linked_data),
-   *Channels* to harvest and maintain such local information on special topics, and
-   *Views* to integrate such harvested information into your favourite web site.

At the long run we plan to build up such a CASN using the architectural concepts of a [DSSN network stack](http://aksw.org/Projects/DSSN.html) designed and developed by the [AKSW group](http://aksw.org) at U Leipzig. A first implementation of these concepts is under development within the [Xodx project](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig).

#### Current State

With SymbolicData Release 3.1 (Jan 2016) we reorganized the experimental CASN structure and shut down the separate RDF store and SPARQL endpoint for the CASN structure.

-   Part of that RDF store (past and upcoming conferences) was included into our [main SymbolicData RDF store](http://symbolicdata.org/Data) and this are available at Linked Data standards.
-   Several applications specific to the German Fachgruppe use RDF data at the [CASN node of the German CA Fachgruppe](http://www.fachgruppe-computeralgebra.de/rdf/). Additionally this data is publicly available for remote applications but there is no RDF store, hence also no Linked Data.
-   Additional RDF data at the [CASN node of the SymbolicData Project](http://symbolicdata.org/rdf). This data is publicly available for remote applications but not yet used in applications.

The *current CASN data base* contains different RDF graphs within the namespace <symbolicdata.org/Data/> that are available at Linked Data standards from our central RDF store <http://symbolicdata.org/Data> and also as files from our [RDF upload area](http://symbolicdata.org/RDFData/). Additional data are supplied by different partners that run CASN nodes to provide own publicly available RDF based data for remote applications without running an RDF store, hence also no Linked Data.

#### CASN and CA People

The main challenge to get a Social Network running is to get a sufficient number of stakeholders interested in the project.

We permanently identify people involved with Computer Algebra and maintain personal information about such people, i.e., potentially active users, in the RDF Graph <http://symbolicdata.org/Data/People/> as **foaf:Person** instances with URI structure <symbolicdata.org/Data/Person/LastName_Initials> and predicates

-   foaf:name - a string "FirstName LastName" (required)
-   foaf:homepage - a link to the homepage (optional)
-   sd:affiliation - a string "Organization, Location" (optional)
-   sd:country - a [dbpedia](http://dbpedia.org) URI (optional)

as a central resource of people URIs. This information is permanently extracted from public sources, in particular conference announcements.

Such an URI provides a "hook" for more information, that should be provided by the users or user communities themselves along the FOAF principles. The [FOAF Project](http://www.foaf-project.org/) (FOAF = "friends of a friend") is a widely recognized and used standard to build up distributed networks of people with common interests.

-   See, e.g., how the [AKSW Working Group](http://aksw.org) has organized information about their research activities in such a way.
-   In particular AKSW provides RDF based information about personal activities, see, e.g., <http://aksw.org/AndreasNareike.rdf>.

The RDF Graph <http://symbolicdata.org/Data/PersonalProfiles/> with links to personal FOAF profiles with more information about the person demonstrates how such information should be included into the system that is best maintained at a local CASN node. E.g., the German Fachgruppe provides at <http://www.fachgruppe-computeralgebra.de/rdf/FOAF-Profiles> such FOAF Profiles of their (current and former) board members.

As proof of concept this information is used to display the [members of the board](http://www.fachgruppe-computeralgebra.de/fachgruppenleitung/) of the German Fachgruppe at their website. This view is collected by the following workflow:

-   Use the SD Person list of the boards as [local RDF graph](http://www.fachgruppe-computeralgebra.de/rdf/FGL-Boards/FGL.rdf),
-   For each SD Person get the corresponding FOAF profile from the [SD Personal Profile Links](http://symbolicdata.org/Data/PersonalProfiles/),
-   Display selected information from the FOAF profile

and [cache it at the local web site](http://www.fachgruppe-computeralgebra.de/rdf/FGL-Boards/).

#### Data at the main SymbolicData RDF store

The [main SymbolicData RDF store](http://symbolicdata.org/Data) provides in particular this data:

-   The RDF Graph <http://symbolicdata.org/Data/UpcomingConferences/> with informations about upcoming conferences
    -   Conferences in the <symbolicdata.org/Data/Conference/> namespace with **sd:UpcomingConference** instances
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/tagungsankuendigungen/) in the Wordpress based site of the German CA Fachgruppe.
    -   Learn more about that code from the *casn-plugin* directory in our *github web repo* at <https://github.com/symbolicdata/web>
-   Past conferences are provided in the RDF Graph <http://symbolicdata.org/Data/PastConferences/> for reference
    -   Conferences in the <symbolicdata.org/Data/Conference/> namespace with **sd:Event** instances
    -   Both are includes into the [SymbolicData CASN demo site](http://symbolicdata.org/info)
    -   Learn more about that code from the *info* directory in our *github web repo* at <https://github.com/symbolicdata/web>
-   Information about people working in CA (mainly extracted from program committee and invited speakers lists in conference announcements)
    -   The RDF Graph <http://symbolicdata.org/Data/People/> with names and affiliations - <symbolicdata.org/Data/Person/> namespace with **foaf:Person** instances
    -   The RDF Graph <http://symbolicdata.org/Data/ZBMathPeople/> with links to the author disambiguation system of the Zentralblatt (common effort with Wolfram Sperber)
    -   The RDF Graph <http://symbolicdata.org/Data/PersonalProfiles/> with links to personal FOAF profiles with more information about the person. This information is maintained either by the person itself or by the maintainer of one of the local CASN nodes.
    -   A demo is includes into the [SymbolicData CASN demo site](http://symbolicdata.org/info)
    -   Learn more about that code from the *info* directory in our *github web repo* at <https://github.com/symbolicdata/web>

#### Data at the local CASN node of the German CA Fachgruppe

The [local CASN node of the German CA Fachgruppe](http://www.fachgruppe-computeralgebra.de/rdf/) provides this data:

-   The RDF Graph <http://www.fachgruppe-computeralgebra.de/rdf/CAR-Beitraege.rdf> with information about articles in the CA-Rundbrief
    -   <www.fachgruppe-computeralgebra.de/rdf/CAR/> namespace with instances of type sd:Reference based on the [dcterms ontology](http://dublincore.org/documents/dcmi-terms/).
    -   The information is extracted using the [EasyRdf PHP library](http://www.easyrdf.org/) to be [displayed](http://www.fachgruppe-computeralgebra.de/rundbrief-beitraege/) in the Wordpress based site of the German CA Fachgruppe.
-   The RDF Graph <http://www.fachgruppe-computeralgebra.de/rdf/WorkingGroups.rdf> with information about German CA working groups and related people
    -   Groups - <www.fachgruppe-computeralgebra.de/rdf/Group/> namespace with instances of **sd:WorkingGroup** and **foaf:Group** - are related to affiliations - <www.fachgruppe-computeralgebra.de/rdf/Organization/> namespace with instances of **org:FormalOrganization** - by the predicate **org:subOrganizationOf**.
    -   People are referenced as sd:Person instances in the main SymbolicData RDF store by the predicate **org:hasMember**.
    -   The information is extracted using the [EasyRdf PHP library](http://www.easyrdf.org/) to be [displayed](http://www.fachgruppe-computeralgebra.de/arbeitsgruppen/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://www.fachgruppe-computeralgebra.de/rdf/SPP-Projekte.rdf> with information about CA projects within the SPP 1489
    -   The projects - <www.fachgruppe-computeralgebra.de/rdf/Project/> namespace with instances of **sd:Project** - were extracted from the projects' section at <http://www.computeralgebra.de>
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/projekte/) in the Wordpress based site of the German CA Fachgruppe.
-   The RDF Graph <http://www.fachgruppe-computeralgebra.de/rdf/Dissertationen.rdf> with informations about dissertations in CA - <www.fachgruppe-computeralgebra.de/rdf/Dissertation> namespace with **bibo:Thesis** instances.
    -   uses standard predicates dcterms:creator (value: URI in SD-Person), dcterms:title, dcterms:date, bibo:degree from the [bibo ontology](http://bibliontology.com).
    -   more predicates: sd:hasSupervisor, sd:hasReviewer (value: URI in SD-Person)
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/dissertationen/) in the Wordpress based site of the German CA Fachgruppe.

#### Additional data at the CASN node of the SymbolicData Team

to be added

#### Some more thoughts about bootstrapping a distributed CASN

We set up a [first prototype](http://symbolicdata.org/xodx) to technically support such a social network upon the [Xodx implementation](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig).

-   A registered person has a **foaf:Person** FOAF Profile and a **sioc:UserAccount** instance not yet aligned with the remaining infrastructure.

This has further to be discussed and is not actively maintained at the moment.
