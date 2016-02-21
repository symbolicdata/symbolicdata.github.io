---
layout: default
title: BirkhoffPolytopes.Ontology
---

### Birkhoff Polytopes Ontology

An informal description of the Ontology of the Birkhoff Polytopes Knowledge Base developed so far.

#### Metadata and Semantics

All Birkhoff Polytope instances belong to the owl:Class **sd:BirkhoffPolytope** with predicates

-   sd:hasPolymakeFile URI - the Resource file
-   sd:hasEPSFile URI - the EPS file

that point to the remote resource.

#### The Birkhoff Polytope Fingerprint

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

