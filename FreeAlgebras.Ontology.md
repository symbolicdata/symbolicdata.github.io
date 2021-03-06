---
layout: default
title: FreeAlgebras.Ontology
---

### Free Algebra Ontology

An informal description of the Ontology of the Free Algebra Knowledge Base developed so far.

#### Metadata and Semantics

All Free Algebra instances belong to the owl:Class **sd:FreeAlgebra** with predicates

-   sd:hasVariables Literal - comma separated list of (non commuting) variables
-   sd:hasParameters Literal - comma separated list of (commuting) parameters
-   sd:uptoDegree Literal - integer, semantics to be fixed
-   sd:relatedXMLResource URI - the Resource file
-   standard predicates sd:createdAt, sd:createdBy, rdfs:comment

The free algebra is the factor of the non commutative polynomial ring Q(a1,...,ak)<x1,...,xn> over the commtative field Q(a1,...,ak) of rational functions in a1,...,ak by the twosided ideal generated by the given non commutative polynomials.

#### XML-Resources

The XML-Resource contains mainly the following tags

-   <vars> - a list x1,...,xn of (non commuting) variables,
-   (optionally) <parameters> - a list a1,...,ak of (commuting) parameters
-   (optionally) <uptoDeg> - an integer (meaning has to be specified)
-   <basis> - a sequence of <ncpoly> entries of non commutative polynomials

For details see the XSchema description [FreeAlgebras.xsd](http://symbolicdata.org/XMLResources/FreeAlgebras.xsd).
