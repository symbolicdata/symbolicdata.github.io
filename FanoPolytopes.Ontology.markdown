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

to be added. List it with

  
PREFIX sd: <http://symbolicdata.org/Data/Model#>

select distinct ?p where { ?s a sd:FanoPolytope . ?s ?p ?o .}

from the Sparql endpoint.

#### Resources

Some information about the organization of the resources has to be added.
