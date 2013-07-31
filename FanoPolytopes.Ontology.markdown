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

to be added.

#### Predicates for sd:FanoPolytope

Listed with

  
PREFIX sd: <http://symbolicdata.org/Data/Model#>

select distinct ?p where { ?s a sd:FanoPolytope . ?s ?p ?o .}

from the Sparql endpoint.

-   sd:canonical
-   sd:centered
-   sd:compressed
-   sd:cone\_ambient\_dim
-   sd:cone\_dim
-   sd:essentially\_generic
-   sd:facet\_width
-   sd:feasible
-   sd:gorenstein
-   sd:gorenstein\_index
-   sd:hasDimension
-   sd:hasFileName
-   sd:inZIPFile
-   sd:lattice
-   sd:lattice\_volume
-   sd:lineality\_dim
-   sd:n\_boundary\_lattice\_points
-   sd:n\_edges
-   sd:n\_facets
-   sd:n\_interior\_lattice\_points
-   sd:n\_lattice\_points
-   sd:normal
-   sd:n\_vertices
-   sd:pointed
-   sd:reflexive
-   sd:simple
-   sd:simple\_polyhedron
-   sd:smooth
-   sd:terminal
-   sd:volume
-   sd:weakly\_centered

#### Resources

Some information about the organization of the resources has to be added.
