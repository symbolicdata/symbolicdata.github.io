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

#### The Transformation Process

The polymake files are in XML and there are some void tags for simple properties. These are listed here, with some (or even all) possible values (where … indicates that there are more values that are not listed):

`REFLEXIVE : true `
`LINEALITY_DIM : 0 `
`CONE_DIM : 6, 4, 5 `
`N_INTERIOR_LATTICE_POINTS : 1 `
`TERMINAL : false `
`SMOOTH : true `
`N_LATTICE_POINTS : 276, 90, 206, 71, 102, 331, 358, 55, 84, 233, 194, 259, 458,… `
`LATTICE : true `
`COMPRESSED : false `
`N_VERTICES : 32, 21, 26, 17, 18, 72, 30, 16, 44, 25, 28, 40, 14, 20, 24, … `
`CONE_AMBIENT_DIM : 6, 4, 5 `
`N_EDGES : 35, 33, 32, 26, 48, 18, 30, 23, 29, 25, 27, 40, 41, 14, 20, … `
`SIMPLE : true `
`LATTICE_VOLUME : 10882, 4544, 5006, 331, 3606, 560, 5284, 7290, 2830, 5936, 6… `
`NORMAL : true `
`ESSENTIALLY_GENERIC : false, true `
`N_BOUNDARY_LATTICE_POINTS : 25, 27, 33, 30, 24, 29 `
`GORENSTEIN_INDEX : 1 `
`N_FACETS : 6, 11, 7, 9, 12, 14, 8, 4, 13, 10, 5 `
`POINTED : true `
`VOLUME : 433/12, 1339/30, 32, 751/30, 185/6, 143/4, 99/4, 1169/30, 23… `
`FEASIBLE : true `
`CENTERED : true `
`SIMPLE_POLYHEDRON : true `
`CANONICAL : true `
`FACET_WIDTH : 4, 3, 7, 2, 5 `
`GORENSTEIN : true`

These void tags were converted to RDF predicates with namespace **sdpt**. (all lowercase like so "sdpt:gorenstein\_index"). It is not clear yet if "pointed", "feasible", "centered", etc... (those with "true" as only value) should be better modelled by introducing new (sub) classes. On the other hand there are also boolean properties that have "false" has value. If the class representation is chosen here, this would have to be modelled with a negative assertion.

#### The Fano Polytope Fingerprint

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

