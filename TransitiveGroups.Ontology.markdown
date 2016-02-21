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
`where { ?s a sd:TransitiveGroup . ?s ?p ?o .}`
`order by ?p`

We list all properties with some comments:

-   sd:hasGenerator String - multiple permutations, e.g., "(1,3,9,7)(2,4,8,6)", "(1,6,9,4)(2,3,8,7)(5,10)", "(2,4,6,8,10)" that generate the group
-   sd:hasName String - e.g., "[52:42]22" \\t
-   sd:hasOrder Integer - order of the group
-   sd:hasOrderFactorization String - e.g., "2\^3 \* 5\^2"
-   sd:hasProperty URI - multiple of sd:abelian, sd:cyclic, sd:even, sd:irreducible, sd:nilpotent, sd:notSolvable, sd:primitive, sd:semiabelian, sd:simple, sd:solvable
-   sd:isDirectProductOf blank node
-   sd:isQuotientOfWreathProductOf \\t blank node
-   sd:isWreathProductOf \\t blank node
-   sd:numberOfFieldsInDatabase Integer
-   sd:OrderOfCenter Integer - order of the center of the group

