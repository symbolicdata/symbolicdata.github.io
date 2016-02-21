---
layout: default
title: TransitiveGroups.Ontology
---

### Transitive Groups Ontology

An informal description of the Ontology of the Transitive Groups Knowledge Base developed so far.

#### Metadata and Semantics

All Transitive Group instances belong to the owl:Class **sd:TransitiveGroup** with predicates

-   sd:hasURL URI - a URL that points to a web page with more information

that point to the remote resource.

#### The Transformation Process

Naming scheme

-   The names in the tables are in the form of "8T42". We convert this to a name in the form of "Gr8T42" (`<nowiki><http://symbolicdata.org/Data/TransitiveGroups/Gr8T43></nowiki>`), because there are some RDF problems with names starting with numbers.

-   `:hasGenerator` — a permutation, should probably be an `xsd:type`. A group can have more than one generator.
-   `hasProperty` — values can be something like `:cyclic`, `:primitive`, `:simple`, `:semiabelian`, `:even`, `:solvable`, `:notSolvable`, `:irreducible`, `:nilpotent`, ...

This should maybe be classes, because those properties are not independent.

-   `:hasName` — can have values like "L(8):2=PGL(2,7)", so it's a bit of a dump predicate which could be further analyzed.
-   `:hasOrder` — integer, self explaining
-   `:OrderOfCenter` — integer, self explaining
-   `:hasOrderFactorization` — A prime factorization as a string (i.e. "2\^7 \* 3\^2 \* 5 \* 7"). Should be an `xsd:type`, probably without the spaces.
-   `:numberOfFieldsInDatabase` ­— An integer number with has no real mathematical meaning but is related to the database.

#### Products

Group can be represented as different product. We have the following:

-   `:isDirectProductOf`
-   `:isWreathProductOf`
-   `:isQuotientOfWreathProductOf`

All three list the argument with blank nodes, in Turtle this look like this:

`sdtg:Gr9T2 sdtg:isDirectProductOf [ sdtg:left sdtg:Gr3T1 ; sdtg:right sdtg:Gr3T1 ] ;`

This approach is now favored instead of using (very general) lists. For details on blank nodes see also:

-   [RDF/XML Syntax Specification (Revised)](http://www.w3.org/TR/rdf-syntax-grammar/)
-   [example on StackoverFlow](http://stackoverflow.com/questions/9833008/a-pair-of-attributes-in-rdf)

#### The Transitive Group Fingerprint

A list of all predicates with number of occurences can be generated with a SPARQL-Query:

`PREFIX sd: `<http://symbolicdata.org/Data/Model#>
`select distinct ?p count(?s)`
`where { ?s a sd:BirkhoffPolytope . ?s ?p ?o .}`
`order by ?p`

We list all properties with some comments:

-   sd:f-vector - a list of integers, e.g., "(16,40,44,26,8)"
-   sd:hasCombinatorialType - some of sd:wed, sd:prod, sd:pyr, sd:join, sd:pyrb.
    -   The deeper semantics has to be explained.
-   sd:hasDescription - a description of the polytope, e.g., "wedge(join(edge,square))"
-   sd:hasDimension integer - the dimension of the polytope, values within 2..8
-   sd:hasNodes integer - values within 3..16
-   sd:hasVertices integer - values within 3..256
-   sd:hiCube integer - values within 1..8
-   sd:simpl integer - values within 1..7

