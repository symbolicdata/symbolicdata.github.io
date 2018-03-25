---
layout: default
title: FAQ
---

### Frequently asked Questions about SymbolicData

#### Technical Questions

(T.1) **Question:** Do you provide Linked Open Data in RDF format?

**Answer:** Yes, we

-   operate an [OntoWiki based RDF Store](http://symbolicdata.org/Data),
-   that can be queried by our [SPARQL Endpoint](http://symbolicdata.org:8890/sparql),
-   we provide (not necessarily up to date) consolidated [RDF Data](http://symbolicdata.org/RDFData) in Turtle format for download and
-   operate also a [github organizational account](https://github.com/symbolicdata) managed along our Development Model.

* * * * *

(T.2) **Question:** RDF is about *resource descriptions*. What's about resources?

**Answer:** The SymbolicData RDF store links both to

-   [centrally stored resources](http://symbolicdata.org/XMLResources) in a flat XML syntax (in particular about Polynomial Systems, Free Algebras and G-Algebras) managed by the SymbolicData team itself, 
-   to foreign resources in different formats (part of the data collected within the polymake project) and
-   started to [collect resources](http://symbolicdata.org/OtherResources) also in non-XML formats used within the communities.

All that is available for download not only from our web site but also can be
cloned form our github master repo.  A [DCAT catalogue
description](https://www.w3.org/TR/vocab-dcat/) is on the way.

* * * * *

(T.3) **Question:** How do you link resources and resource descriptions?

**Answer:** Through *fingerprints*, a concept explained in more detail in our [paper](http://symbolicdata.uni-leipzig.de/Papers/car-55.pdf) in Computeralgebra-Rundbrief 55 (October 2014)

* * * * *

(T.4) **Question:** How to set up a Local Sparql Endpoint?

**Answer:** Look at our wiki page [LocalSparqlEndpoint](LocalSparqlEndpoint "wikilink").

* * * * *
* * * * *

#### Frequently asked Questions about SymbolicData by our (anonymous) Reviewers and Others

(R.1) **Question:** Who is the team behind SymbolicData and what are your resources?

**Answer:** SymbolicData grew up in 1998 in a situation where heavily founded projects
finished and people formerly not involved with the projects took efforts to
secure part of the research infrastructure developed during the project.  It
was, is and remains (intentionally) a volunteer's project without funding and
lives on the resources that these (changing over the time) volunteers are able
to sideline for SymbolicData.

(R.2) **Question:** You have no clear focus in your [papers](Publications
"wikilink"), resubmit material.

**Answer:** Papers about SymbolicData are not research papers but report about
aspects and design decisions for Research Infrastructure.  Hence they are
"different" and, in some sense, even not academic.  Since the topic of
SymbolicData is clearly interdisciplinary we try to present the results to
different communities, there is necessarily argumentational overlap. 

SymbolicData follows a very Open Publication strategy - you find pdf versions
of all papers under submission, accepted, rejected, and published [in our
wiki](Publications "wikilink") and selected reviewer reports in our git Repo.

(R.3) **Question:** What motivated you to publish your data as linked data.

**Answer:** All world is talking about [Linked Open
Data](http://lod-cloud.net/) and its enormously growing importance during the
last 10 years. There are, of course, also more substantial arguments ...

(R.4) **Question:** How sustainable is your project? (asked by Stephen Watt at
CICM 2014)

**Background:** We supplied to CICM-14 a paper that was not accepted for
presentation in the projects slot but "downgraded" to a "Work in progress
report".  Stephen Watt asked that question during the discussion of our talk.
We supplied another paper to CICM-16 with the same result but decided not to
present the project another time as "Work in progress". 

**Answer:** The project started in 1998, hence survived much longer as many
  other well staffed projects.  During that time we had "dry periods" and
  learned to "survive in the desert" until the next rain (i.e., project
  money).  The project is as long alive as the last person works on the last
  bits of the project.

(R.5) **Question:** What is the motivation for your choice of vocabulary?

**Answer:** Not every ontology on the internet has equal influence and it is
hard to decide about their "weights". We use foaf, dct, org, but also an agile
approach that proved to be very fruitful within AKSW many times. This means,
start collect RDF sentences (4 stars in the [Tim Berners-Lee
program](http://5stardata.info)) and look for the fifth star in a redesign
process. 

Our reference for potentially useful vocabularies is the standard reference
http://lov.okfn.org of the Open Knowledge Foundation. 

(R.6) **Question:** How do you describe mathematical software packages?

**Answer:** We decided to maintain within SymbolicData only a tall interface to
descriptions of mathematical software packages with [references to
swmath](http://www.swmath.org/).  So all questions about ontologies should be
discussed directly with the swmath people.

(R.2) **Question:** How information about conference announcements is collected? 

**Answer:** This data was populated neither "manually" nor "crawled" but
tool-based from several mailing lists to ensure quality of the data. This is a
classical data architect's approach.  

We stopped that part of the project, since running it over two years we
provided a "proof of concept", but have no resources to perpetuate that
without support from the communities.  For the communities it seems to be
enough to get informed along their mailing lists and to collect casual
overviews of upcoming conferences at many not interrelated web pages.

(R.7) **Question:** Some of your arguments sound pretty standard, is this
  innovative?

**Answer:** Yes, this is very innovative, since many semantic web projects
don't use and even don't recognize existing standards. Using standards reduces
efforts and thus enlarges the scope of work that could be done with given
resources.

(R.8) **Question:** You claim, that "practical use of data from a special field
requires a minimum of semantic-awareness of the user itself". Indeed?

**Answer:** Example: To use Wreath Product decomposition information from
[Transitive Groups](http://symbolicdata.org/Data/TransitiveGroups/) you have
to know what a Wreath Product is.

(R.9) **Question:** Some of the data is mentioned as not up to date - what are the
steps that are being taken to keep the info fresh? This is crucial in the
design.

**Answer:** We provide all data "as is".  To keep data up to date requires
engagement of volunteers.  

Take, e.g., the [book
list](http://www.fachgruppe-computeralgebra.de/symbolicdata/buchliste/)
compiled by the German Fachgruppe for many years, that we [translated to
rdf](http://www.fachgruppe-computeralgebra.de/rdf/Buchliste-Alt.rdf). It were
a good base to compile a common book list as a joined community effort but
this requires volunteers to update that information. 

The German Fachgruppe lost interest in that topic for several years and later
on decided to [start a new book list
project](http://www.fachgruppe-computeralgebra.de/publikationen/) neither
taking notice of the old one nor our proposal, so both are orphaned (but yet
available on the internet in a very structured way).  The continuation of many
undertakings depends on the priorities of (changing) board members.
