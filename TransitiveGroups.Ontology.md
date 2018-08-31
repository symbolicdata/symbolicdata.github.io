---
layout: default
title: TransitiveGroups.Ontology
---

### Transitive Groups Ontology

An informal description of the Ontology of the Transitive Groups Knowledge Base developed so far.

#### Metadata and Semantics

All Transitive Group instances belong to the owl:Class **sd:TransitiveGroup** with predicates

-   sd:hasURL URI - a URL that points to a remote web page in the [Database for Number Fields](http://galoisdb.math.uni-paderborn.de) with more information.

#### The Transformation Process

**Naming scheme**

-   The names in the tables are in the form of "8T42". We convert this to a name in the form of "Gr8T42" (<http://symbolicdata.org/Data/TransitiveGroups/Gr8T43>), because there are some RDF problems with names starting with numbers.

**Products**

-   Groups can be represented as different kind of products. We have the following:
    -   `sd:isDirectProductOf`
    -   `sd:isWreathProductOf`
    -   `sd:isQuotientOfWreathProductOf`

Each of them is a [wreath product](https://en.wikipedia.org/wiki/Wreath_product) of two groups. We represent that in RDF as, e.g.,

<URI>` sd:left sdtg:Gr3T1 ; sd:right sdtg:Gr3T1 .`

In a first version we used blank nodes to store that information, but due to scoping issues blank nodes are not well supported by different RDF tools.

-   (2016-02-21) Hans-Gert Gräbe translated the data to a notion with named nodes as, e.g.,

`sdtg:Gr3T1_Gr3T1 sd:left sdtg:Gr3T1 ; sd:right sdtg:Gr3T1 .`

#### The Transitive Group Fingerprint

A list of all predicates with number of occurences can be generated with a SPARQL-Query:

`PREFIX sd: `<http://symbolicdata.org/Data/Model#>
`select distinct ?p count(?s)`
`where { ?s a sd:TransitiveGroup . ?s ?p ?o .}`
`order by ?p`

We list all properties with some comments:

-   sd:hasGenerator String - multiple permutations, e.g., "(1,3,9,7)(2,4,8,6)", "(1,6,9,4)(2,3,8,7)(5,10)", "(2,4,6,8,10)" that generate the group
-   sd:hasName String - e.g., "[52:42]22"
    -   What's the rule for such a naming?
-   sd:hasOrder Integer - order of the group
-   sd:hasOrderFactorization String - e.g., "2\^3 \* 5\^2"
-   sd:hasProperty URI - multiple of sd:abelian, sd:cyclic, sd:even, sd:irreducible, sd:nilpotent, sd:notSolvable, sd:primitive, sd:semiabelian, sd:simple, sd:solvable
    -   At the moment merely an URI. To be extended to skos:Concept.
-   sd:isDirectProductOf sd:WreathProduct
-   sd:isQuotientOfWreathProductOf sd:WreathProduct
-   sd:isWreathProductOf sd:WreathProduct
-   sd:numberOfFieldsInDatabase Integer
-   sd:OrderOfCenter Integer - order of the center of the group

