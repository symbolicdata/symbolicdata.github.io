---
layout: default
title: CASN
---

### Towards a Computer Algebra Social Network

Links to the currently available infrastructure

-   <http://symbolicdata.org:8891/sparql> - CASN SPARQL Endpoint
-   <http://symbolicdata.org/xodx> - the CASN xodx node (very experimental yet)
-   <http://symbolicdata.org/casn> - the CASN OntoWiki (aligned with Linked Data standards)
-   <http://symbolicdata.org/info> - different views on the CASN data (in progress)

#### Vision

The vision is a digitally supported distributed social semantic network within Open Science for the needs of the Computer Algebra Community.

At longer run we plan to use the concepts of a [DSSN network stack](http://aksw.org/Projects/DSSN.html) designed and developed by Sebastian Tramp (U Leipzig). A first implementation of these concepts is under dervelopment within the [Xodx project](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig).

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
-   the RDF Graph <http://symbolicdata.org/casn/CAR-Beitraege/> with information about articles in the CA-Rundbrief
    -   Entries of type sd:Reference are composed based on the [dcterms ontology](http://dublincore.org/documents/dcmi-terms/) and have URIs within the <symbolicdata.org/casn/CAR/> namespace.
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/rundbrief-beitraege/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://symbolicdata.org/casn/WorkingGroups/> with information about German CA working groups and related people
    -   Namespaces <symbolicdata.org/casn/Group/> (for groups - instances of **sd:WorkingGroup** and **foaf:Group**) and <symbolicdata.org/casn/Organization> (for affiliations - instances of **org:FormalOrganization**)
    -   Groups are related to affiliations by predicate **org:subOrganizationOf**.
    -   People are referenced as <symbolicdata.org/Data/Person/> instances by predicate **org:hasMember**.
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/arbeitsgruppen/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://symbolicdata.org/casn/SPP-Projekte/> with information about CA projects within the SPP 1489
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/projekte/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://symbolicdata.org/casn/Dissertationen/> with informations about dissertations in CA - <symbolicdata.org/casn/Dissertation/> namespace with **bibo:Thesis** instances.
    -   uses standard predicates dcterms:creator (value: URI in SD-Person), dcterms:title, dcterms:date, bibo:degree from the [bibo ontology](http://bibliontology.com).
    -   more predicates: sd:hasSupervisor (value: URI in SD-Person), sd:hasReviewer (value: URI in SD-Person), sd:affiliates (value: URI in <symbolicdata.org/casn/Organization/>)
    -   The information is extracted via SPARQL query and [displayed](http://www.fachgruppe-computeralgebra.de/dissertationen/) in the Wordpress based site of the German CA Fachgruppe.
-   the RDF Graph <http://symbolicdata.org/casn/ConferenceReports/> with conference reports as published in the CA Rundbrief (in progress)
-   the RDF Graph <http://symbolicdata.org/casn/News/> with (few so far) Semantic Annotations to news from different online resources in the **sioc:BlogPost** format.

#### CASN and CA People

The main challenge to get a Social Network running is to "turn passive users into active ones". For the moment a very small number of active people maintains the information available within the CASN. We maintain personal information about SD People, in prticular *passive users*, in the RDF Graph <http://symbolicdata.org/data/People/> as **foaf:Person** instances with URI structure <symbolicdata.org/data/Person/LastName_Initials> and predicates

-   foaf:name - a string "FirstName LastName" (required)
-   foaf:homepage - a link to the homepage (optional)
-   sd:affiliation - a string "Organization, Location" (optional)
-   sd:country - a [dbpedia](http://dbpedia.org) URI (optional)

A first step towards a *distributed* CASN are local FOAF profiles of users. [FOAF](http://www.foaf-project.org/) is a standard how to display a *personal profile page* (see, e.g., <http://aksw.org/AndreasNareike.rdf>) at a local website in RDF format. To maintain a collection of such references FOAF suggests to have a centrally managed **foaf:PersonalProfileDocument** instance for each such FOAF profile.

The RDF Graph <http://symbolicdata.org/casn/PersonalProfileDocuments/> contains a list of such foaf:PersonalProfileDocument instances with URI structure <symbolicdata.org/casn/ProfileDocument/FirstnameLastname> and predicates

-   foaf:primaryTopic - the URI of the local FOAF profile as foaf:Person instance
-   foaf:maker - the URI of the maker of the PersonalProfileDocument
-   rdfs:seeAlso - the URI of the same person in the <symbolicdata.org/data/People/> data base.

For the moment we operate another RDF graph <http://symbolicdata.org/casn/FOAF-Profiles/> with (centrally managed) FOAF profiles of (current and former) members of the board of the German CA Fachgruppe as proof of the concept. This information is used to display the web page about the [members of the board](http://www.fachgruppe-computeralgebra.de/fachgruppenleitung/) of the German CA Fachgruppe. The display is collected by the following workflow:

-   extract the SD Person list of the board from the RDF graph <http://symbolicdata.org/casn/Groups/>,
-   for each SD Person get the required FOAF profiles from the PersonalProfileDocument
-   display the information

#### Some more thoughts about bootstrapping a distributed CASN

We set up a [first prototype](http://symbolicdata.org/xodx) to technically support such a social network upon the [Xodx implementation](http://aksw.org/Projects/Xodx.html) (Natanael Arndt, U Leipzig).

-   A registered person has a **foaf:Person** FOAF Profile and a **sioc:UserAccount** instance not yet aligned with the remaining infrastructure. This has further to be discussed.

