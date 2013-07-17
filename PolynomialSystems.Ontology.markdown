---
layout: default
title: PolynomialSystems.Ontology
---

### Polynomial Systems Ontology

An informal description of the Ontology of the Knowledge Base of Polynomial Systems and Ideals developed so far.

#### Metadata and Semantics

Different to earlier versions in the upcoming SymbolicData v.3 (scheduled for Aug 2013) we drastically reduced the number of really stored polynomial systems in favour of standardized polynomial time (in the input length) algorithms to generate derived examples by a well defined workflow described below.

We assume the user to have semantic aware tools at hand to generate the required examples and provide a prototypical solution for [Sage](http://www.sagemath.org) that can easily adapted to your favourite CA system.

  
Develop the Sage solution. -- Assigned to Andreas.

We encourage users to share their code developed for other CAS.

The starting point are polynomial systems in XML notation and descriptions how to generate different ideals from that data. Polynomial systems in XML notation are stored in the XMLResources part as Integer Polynomial Systems (IntPS) or - a small number of examples - as Modular Polynomial Systems (ModPS). Metadata (including information about ideal generation) are stored in RDF form in the RDFData part that can be searched by [Sparql](QuickStart "wikilink") queries.

A **polynomial system** XML file - integer or modular - provides a list of (case sensitive) variable names x\_1,...,x\_n and a list of polynomials p\_1,...,p\_m in distributive from in that variable names with integer coefficients (i.e., matching the regex [\\\\d+]) in a syntax that can be directly read in by most CAS. You need an XML parser to extract both parts and a parser for polynomials to read in the data and interpret it semantically as list of polynomials in the ring Z[x\_1,...,x\_n]. Due to the universal property of Z[x\_1,...,x\_n] this list is the semantic starting point for all further constructions. There is a unique URI for each such polynomial system in the RDF Data, e.g.,

  
symbolicdata.org/Data/IntPS/Wang-92c

for the polynomial system with the XML Resource

  
symbolicdata.org/XMLResources/IntPS/Wang-92c.xml

The identifiers within a polynomial system can be interpreted both as variables and as parameters, hence the same polynomial system gives rise to several interpretations as **Ideals** in different polynomial rings. Moreover many examples considered in the literature are derived from other ones by homogeneization, quasihomogeneization, homogeneization with respect to subsets of variables etc.

To keep our collection tall different examples are described in the way how they can be generated from other ones.

To navigate within the examples we assume the generating polynomials given in expanded distributive normal form and extracted from that representation (ordered) length lists and (total) degree lists for the given generating polynomials. These values are independent from the variable names used in different sources for the same example and allow to shrink the search space to identify if a given example is already contained in this collection.

Polynomial Systems instances belong to the classes **sd:IntegerPolynomialSystem** or **sd:ModularPolynomialSystem** with predicates

-   standard predicates sd:createdAt, sd:createdBy, rdfs:comment
-   sd:relatedXMLResource URL - the URL of the corresponding XML resource

Get the example

-   sd:createCommand Literal - how to create that example from another one
-   sd:relatedINTPSEntry sd:INTPS - the example addressed by the create command
-   sd:relatedXMLResource URI - the Resource file (if any) containing the basis
-   sd:hasVariables Literal - comma separated list of variables
-   sd:hasParameters Literal - comma separated list of parameters

  
  
The ideal is considered in the polynomial ring Z(parameters)[variables]

Invariants of the generating polynomials

-   sd:hasDegreeList - comma separated list of integers in increasing order, degrees of the generating polynomials
    -   order has to be fixed
-   sd:hasLengthsList - comma separated list of integers in increasing order, number of terms of the generating polynomials
    -   order has to be fixed

Invariants of the ideal

-   sd:isHomogeneous Literal - integer, 1 if homogeneous (to be changed in type sd:HomogeneousIdeal)
-   sd:hasDegree Literal - integer, degree for a zerodimensional ideal
-   sd:hasDimension Literal - integer, dimension for an ideal
-   sd:hasIsolatedPrimesDegrees Literal - comma separated list of integers, degrees of the prime components of a zero dimensional ideal
-   sd:hasIsolatedPrimesDimensions Literal - comma separated list of integers, dimensions of the isolated prime components

#### Polynomial Systems XML-Resources

The XML-Resource contains mainly the following tags

-   (ModPS only) <basedomain> - the base domain (if not the rationals)
-   <vars> - a list x1,...,xn of variables,
-   <basis> - a sequence of <poly> entries of (commutative) polynomials

The list of polynomials can generate different ideals in different commutative polynomial rings Q(y1,...,yk)[z1,...,zm], where y1,...,yk,z1,...,zm is a rearrangement of x1,...,xn. So the same XML Resource may be related to several INTPS or ModPS examples.

For details see the XSchema description [PolynomialSystem.xsd](http://symbolicdata.org/XMLResources/PolynomialSystem.xsd).

#### Changes

-   Change URIs in the following way:
    -   Convert existing examples from type sd:IntPS to sd:Ideal, change URI to symbolicdata.org/Data/Ideal/...
    -   Add new entries of type sd:IntPS resp. sd:ModPS to refer to the Polynomial Systems XML resources with URI symbolicdata.org/Data/PolynomiaSystem/... (note the singular!)
-   Fix LengthsLists and DegreeLists according to the correct semantic interpretation of the polynomials (in distributive normal form) in the underlying polynomial ring - extract the correct lists of terms, compute their lengths and max. total degrees and arrange that data in increasing order. (Andreas works on that - 2013-07-14)

