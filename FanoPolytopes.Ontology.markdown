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

The name of the ZIP files gives rise to a property

-   sd:hasDimension

that is not explicitely stated in the resource files (also see [the comment before the ZIP files](http://polymake.org/polytopes/paffenholz/www/fano.html))

#### Predicates for sd:FanoPolytope

A list of all predicates can be generated with a SPARQL-Query:

`PREFIX sd: `<http://symbolicdata.org/Data/Model#>
`select distinct ?p where { ?s a sd:FanoPolytope . ?s ?p ?o .}`

We all properties with some comments:

##### Only "true" or not set

These should probably be modeled as classes (along with the other "boolean" properties). Some additional input from the polytopes community is needed here.

-   sd:canonical (only used for F.5D.0040.poly)
-   sd:centered
-   sd:cone\_ambient\_dim
-   sd:feasible
-   sd:gorenstein
-   sd:lattice
-   sd:normal
-   sd:pointed
-   sd:reflexive
-   sd:simple
-   sd:simple\_polyhedron
-   sd:smooth
-   sd:weakly\_centered

##### Only "false" or not set

-   sd:compressed
-   sd:terminal

##### Can be "true" or "false"

-   sd:essentially\_generic

##### Either "1" or not set

-   sd:gorenstein\_index
-   sd:n\_interior\_lattice\_points

##### Integer values

-   sd:cone\_dim
-   sd:facet\_width
-   sd:n\_lattice\_points
-   sd:lattice\_volume
-   sd:n\_boundary\_lattice\_points
-   sd:n\_edges
-   sd:n\_facets
-   sd:n\_vertices

##### Always "0"

Might be wrong?

-   sd:lineality\_dim

##### Fractions values (e.g. "123/435")

-   sd:volume

#### Resources

Some information about the organization of the resources has to be added.
