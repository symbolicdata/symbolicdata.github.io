---
layout: default
title: CADatabases
---

At the site [computeralgebra.de](http://www.computeralgebra.de/index.php?option=com_content&view=article&id=89&Itemid=53) there are listed different databases, some of which were processed into RDF.

### Number Fields

(contains a database of number fields up to degree 19 created by Jürgen Klüners and Gunter Malle)

Link: [1](http://galoisdb.math.uni-paderborn.de/)

-   **Triples extracted**: 86476
-   The names in the tables are in the form of "8T42". We convert this to a name in the form of "Gr8T42" (`<nowiki><http://symbolicdata.org/Data/TransitiveGroups/Gr8T43></nowiki>`), because there are some problems with names that start with numbers.

-   `:hasURL` ­— a URL that point a web page with more information. This information is right now only partly extracted.
-   `:hasGenerator` — a permutation, should probably be an `xsd:type`. A group can have more than one generator.
-   `hasProperty` — values can be something like `:cyclic`, `:primitive`, \<`:simple`, `:semiabelian`, `:even`, `:solvable`, `:notSolvable`, `:irreducible`, `:nilpotent`, ...

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

All three have a list of two values as object, in Turtle this look like this:

`sdtg:Gr9T2 sdtg:isDirectProductOf ( sdtg:Gr3T1 sdtg:Gr3T1 ) ;`

A list might be too general here, since all we need is a pair. This could also be modelled with blank nodes:

-   [RDF/XML Syntax Specification (Revised)](http://www.w3.org/TR/rdf-syntax-grammar/)
-   [example on StackoverFlow](http://stackoverflow.com/questions/9833008/a-pair-of-attributes-in-rdf)

### Smooth reflexive lattice polytopes

(by Andreas Paffenholz, most of the data is provided in the polymake format)

Link: [2](http://polymake.org/polytopes/paffenholz/www/fano.html)

-   **Triples extracted:** 122038

We downloaded the compressed polymake files and extracted some information from them. The files for dimensions greater 6 significantly lack data to extract while having a total file size that is much greater (compared to lower dimensions). So right now only dimension 3 to 6 are done to avoid adding huge amount of data with only little meaning.

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

These void tags were converted to RDF predicates (into camel case like "gorensteinIndex"). It is not clear yet if "pointed", "feasible", "centered", etc... (those with "true" as only value) should be better modelled by introducing new (sub) classes. On the other hand there are also boolean properties that have "false" has value. If the class representation is chosen here, this would have to be modelled with a negative assertion.

### Combinatorial types of Birkhoff Faces

(also by Andreas Paffenholz)

Link: [3](http://polymake.org/polytopes/paffenholz/www/birkhoff.html)

-   **Triples extracted:** 56734

-   consists of seven tables which are readily converted into RDF

Predicates used:

-   `:hasDimension` — predicate added for convenience
-   `:hasNode`, `:hasVertices` — straightforward
-   `:f-vector` ­— This should probably be an `xsd:type` like 'vector' or a sub class of a vector class. There is probably already a nice vocubulary we could use here (open question).
-   `:hasCombinatorialType` — It's right now not really clear how these are meant. There are only five allowed values: "pyr", "prod", "join", "wed", "pyrb" (all `xsd:string`). The deeper semantic behind these is not yet understood by us. There is probably more that can be said about those combinatorial types.

-   `:simpl`, `:hiCube` — These have integer values. The meaning is not clear. This could probably be modelled better.
-   `:hasPolymakeFile`, `:hasEPSFile` — straightforward, a link to the polymake or EPS file

