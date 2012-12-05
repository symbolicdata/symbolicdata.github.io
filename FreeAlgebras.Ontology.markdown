---
layout: default
title: FreeAlgebras.Ontology
---

### Free Algebra Ontology

An informal description of the Ontology of the Free Algebra Knowledge Base developed so far.

All Free Algebra instances belong to the owl:Class **sd:FreeAlgebra** that is the rdfs:domain of the predicates

-   sd:hasVariables Literal - comma separated list of (non commuting) variables
-   sd:hasParameters Literal - comma separated list of (commuting) parameters
-   sd:uptoDegree Literal - integer, semantics to be fixed
-   sd:relatedXMLResource URI - the Resource file
-   standard predicates sd:createdAt, sd:createdBy, rdfs:comment

#### Free Algebra XML-Resources

The XML-Resource contains mainly the following tags

-   <vars> - a list x1,...,xn of (non commuting) variables,
-   (optionally) <parameters> - a list a1,...,ak of (commuting) parameters
-   (optionally) <uptoDeg> - an integer (meaning has to be specified)
-   <basis> - a sequence of <ncpoly> entries of non commutative polynomials

The basis generates an ideal in the non commutative polynomial ring Q(a1,...ak)<x1,...,xn>.

For details see the XSchema description [FREEALGEBRA.xsd](http://symbolicdata.org/XMLResources/FREEALGEBRA.xsd).
