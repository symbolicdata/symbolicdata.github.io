---
layout: default
title: FanoPolytopes.Ontology
---

### Fano Polytopes Ontology

An informal description of the Ontology of the Fano Polytopes Knowledge Base developed so far.

#### Metadata and Semantics

All Fano Polytope instances belong to the owl:Class **sd:FanoPolytope** with predicates

-   sd:inZIPFile URI - the Resource zip file with a bundle of polytopes
-   sd:hasFileName String - the file name

that point to the remote resource.

#### Predicates for sd:FanoPolytope

A list of all predicates with number of occurences can be generated with a SPARQL-Query:

`PREFIX sd: `<http://symbolicdata.org/Data/Model#>
`select distinct ?p count(?s)`
`where { ?s a sd:FanoPolytope . ?s ?p ?o .}`
`order by ?p`

We list all properties with some comments:

##### Integer value

-   sd:cone\_dim
-   sd:facet\_width
-   sd:hasDimension - the dimension of the polytope
-   sd:lattice\_volume
-   sd:lineality\_dim - only 18 instances (all values 0 - might be wrong?)
-   sd:n\_boundary\_lattice\_points - only 7 instances
-   sd:n\_edges
-   sd:n\_facets
-   sd:n\_lattice\_points
-   sd:n\_vertices

##### Ratonal value (e.g. "123/435")

-   sd:volume

##### Only "true" or not set

These should probably be modeled as classes (along with the other "boolean" properties). Some additional input from the polytopes community is needed here.

-   sd:canonical - (only F.5D.0040)
-   sd:centered
-   sd:cone\_ambient\_dim
-   sd:feasible
-   sd:gorenstein - (only F.3D.0014)
-   sd:lattice
-   sd:normal
-   sd:pointed
-   sd:reflexive - only 4 instances
-   sd:simple - only 4 instances
-   sd:simple\_polyhedron - only 2 instances
-   sd:smooth- only 3 instances
-   sd:weakly\_centered

##### Only "false" or not set

-   sd:compressed - only 11 instances
-   sd:terminal - only 1 instance

##### Can be "true" or "false"

-   sd:essentially\_generic

##### Either "1" or not set

-   sd:gorenstein\_index - (only F.3D.0014)
-   sd:n\_interior\_lattice\_points - only 8 instances

