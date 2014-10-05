---
layout: default
title: Main Page
---

The SymbolicData Project Wiki
-----------------------------

-   [About the SymbolicData Project](About "wikilink")
-   [[Vision|Our Vision]
-   [Getting Started / What is this all about?](QuickStart "wikilink")
-   [A Guide through this Site](Guide "wikilink")
-   [A Guide through the SD Resources](Resources "wikilink")
-   [What's new?](New "wikilink")

### Main goals

The SymbolicData Project aims at two main goals:

-   to unify efforts to collect digital data for profiling, testing and benchmarking Computer Algebra Software from various Symbolic Computation Communities together with concepts, tools and experience for their management both globally and also for special profiling, testing and benchmarking purposes at a local site.
-   to promote a network of repositories of Symbolic Computation digital data and related information from different areas of Computer Algebra that can evolve to a digitally supported [Distributed Computer Algebra Social Network](CASN "wikilink").

At the moment the project hosts data from the following communities within Symbolic Computing

-   [Fano Polytopes](FanoPolytopes "wikilink")
-   [Free Algebras](FreeAlgebras "wikilink")
-   [G-Algebras](GAlgebras "wikilink")
-   [Geometry Theorem Proving](Geo "wikilink")
-   [Polynomial Systems](PolynomialSystems "wikilink")
-   [Test Sets](TestSets "wikilink")

The project manages additional Data:

-   [Annotations](Annotations "wikilink") - a system of background information on different examples and series of examples
-   [Bibliography](Bibliography "wikilink") - bibliographical references system (to be aligned with [swmath](http://www.swmath.org))
-   [Conferences](Conferences "wikilink") - data base of upcoming conferences
-   [People](People "wikilink") - different people and groups (to be aligned with [swmath](http://www.swmath.org))
-   [Systems](Systems "wikilink") - list of CA systems (aligned with [swmath](http://www.swmath.org))

Experimental data (work in progress):

-   [Computeralgebra Databases](CADatabases "wikilink")

### Resources

We manage the following resources:

-   This Web site for background information and informal descriptions
    -   A [poster](http://symbolicdata.org/Uploads/overview-poster.pdf) displays the overall structure and embedding of the project
-   A Google mailing list <https://groups.google.com/forum/>\#!forum/symbolicdata
-   A public git master repo at <https://github.com/symbolicdata/symbolicdata>
    -   We use the integration manager workflow, hence look up for the forks of the master repo at the github accounts of SymbolicData followers for more recent information.
    -   [More](Using.Git "wikilink") about the way how we use git
-   Some docu at [readthedocs.org](http://symbolicdata.readthedocs.org).
-   Primary data as [XML Resources](http://symbolicdata.org/XMLResources) and [other Resources](http://symbolicdata.org/OtherResources) available (e.g.) via HTTP Get.
-   Primary meta data in RDF format, accessible by [Linked Data](http://linkeddata.org) standards.

  
Try out

`curl -LH "Accept: application/rdf+xml" `[`http://symbolicdata.org/Data/Ideal/Buchberger-87.Homog`](http://symbolicdata.org/Data/Ideal/Buchberger-87.Homog)

  
to get the Buchberger-87.Homog meta data from the sd:Ideal knowledge base in rdf/xml format by a simple HTTP Get request to the URI

-   An [instance of OntoWiki](http://symbolicdata.org/Data) to present and maintain these primary RDF Metadata.
    -   [OntoWiki](OntoWiki "wikilink") is a tool providing support for agile, distributed knowledge engineering scenarios developed by the [AKSW team](http://aksw.org) at the Leipzig University. It facilitates the visual presentation of a knowledge base as an information map, with different views on instance data. It enables intuitive authoring of semantic content, with an inline editing mode for editing RDF content, similar to WYSIWIG for text documents.
-   A [SPARQL endpoint](http://symbolicdata.org:8890/sparql) to explore the primary RDF Metadata.
    -   [More](QuickStart "wikilink") about the way how to use Sparql
    -   How to set up your [local Sparql endpoint](LocalSparqlEndpoint "wikilink") on a server running debian and apache
-   Dumps according to our [Backup strategy](Backups "wikilink").

### Related Activities

-   [Computer Algebra Fachgruppe](http://www.fachgruppe-computeralgebra.de)
-   [DFG Priority Program SPP 1489](http://www.computeralgebra.de)
-   [More related activities](RelatedActivities "wikilink") concerning databases, benchmarking and computational tasks in Symbolic Computing.

### A Small Guide through this Site

-   [Backup Strategy](Backups "wikilink")
-   [Calculation Tasks](Benchmarks "wikilink")
    -   [The SDEval Framework](SDEval "wikilink")
    -   [Using Sage](Sage "wikilink") for SD computations
-   [Copyright Issues](Copyrights "wikilink")
-   [Design Issues](Design "wikilink")
-   [Documentation Standards](Documentation "wikilink")
-   [Events](Events "wikilink")
-   [GettingStarted](GettingStarted "wikilink")
-   [History](History "wikilink") of the Symbolic Data Project.
-   [Local Sparql Endpoint](LocalSparqlEndpoint "wikilink"): How to set up a local Sparql endpoint on a server running debian and apache
-   Thoughts about the [Project Organization](Organization "wikilink")
-   [Subprojects](Projects "wikilink") within SymbolicData
-   [Publications and Presentations](Publications "wikilink")
-   [Related Activities](RelatedActivities "wikilink")
-   Different [Software](Software "wikilink") related to the SymbolicData Project
-   [Timing](Timing "wikilink")
-   [Using.Git](Using.Git "wikilink")

