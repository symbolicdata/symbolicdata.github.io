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

A **polynomial system** XML file - integer or modular - provides a list of (case sensitive) variable names x\_1,...,x\_n and a list of polynomials p\_1,...,p\_m in distributive from in that variable names with integer coefficients (i.e., matching the regex [\\\\d+]) in a syntax that can be directly read in by most CAS. You need an XML parser to extract both parts and a parser for polynomials to read in the data and interpret it semantically as list of polynomials in the ring Z[x\_1,...,x\_n].

Polynomial Systems instances belong to the classes **sd:IntegerPolynomialSystem** or **sd:ModularPolynomialSystem** with predicates

-   standard predicates sd:createdAt, sd:createdBy, rdfs:comment
-   sd:relatedXMLResource URL - the URL of the corresponding XML resource

Due to the universal property of Z[x\_1,...,x\_n] auch a polynomial list is the semantic starting point for all further constructions. There is a unique URI for each polynomial system in the RDF Data, e.g.,

  
symbolicdata.org/Data/IntPS/Wang-92c

for the polynomial system with the XML Resource

  
symbolicdata.org/XMLResources/IntPS/Wang-92c.xml

The polynomial system defines a **flat ideal** in the ring Q[x\_1,...,x\_n] that is referenced as

  
symbolicdata.org/Data/Ideal/Wang-92c

A flat ideal RDF description has a predicate *sd:relatedPolynomialSystem* that refers to the underlying polynomial system.

All **other ideals** are derived from already known ideals as pull back or push forward images of the generating polynomials of the known ideal along canonical ring homomorphisms by a restricted number of operations:

-   interpreting part of the variables as parameters,
-   homogenizing polynomials,
-   substituting special values for variables.

The URI of the parent ideal is referenced with the predicate *sd:relatedParentIdeal*.

**Parameterized ideals** are defined with the predicates *sd:hasParameters* and *sd:hasVariables* that contain two disjoint lists of variable names that sum up to the complete list of variable names of the parent ideal.

**Homogenized ideals** arize by homogenization (according to the standard grading of the variables) of the polynomials describing the parent ideal. For the moment there is a predicate *sd:createCommand* with a procedure call as value that describes the homogenization process.

  
To be changed to *sd:homogenizingVariable varname*. -- HGG

#### Identification

A hard problem is to identify if a given external polynomial systems is contained in the data, since the same polynomial system is given in the literature with different variable names in different orders. Moreover, there are several "almost equal" examples, that came into life by missprints but started their own life afterwards.

To navigate within the examples we compute and store invariants of the generating polynomials and the ideals. For a given generating set we interpret the polynomials in the given ring in expanded distributive form, extract the list of terms, compute length lists and (total) degree lists and store them in (independently) ordered form as values of the predicates *sd:hasDegreeList* and *sd:hasLengthsList*.

  
Change sd:hasLengthsList to sd:hasLengthList ? -- HGG

These values are independent from the variable names used in different sources for the same example and allow to shrink the search space to identify if a given example is already contained in our collection.

#### Predicates for sd:Ideal

-   sd:hasVariables Literal - comma separated list of variables
-   sd:hasParameters Literal - comma separated list of parameters
-   sd:hasDegreeList - comma separated list of integers in increasing order, degrees of the generating polynomials
    -   order has to be fixed
-   sd:hasLengthsList - comma separated list of integers in increasing order, number of terms of the generating polynomials
    -   order has to be fixed

Invariants of the ideal

-   sd:isHomogeneous Literal - integer, 1 if homogeneous (deprecated)
    -   changed to additional type sd:HomogeneousIdeal
-   sd:hasDegree Literal - integer, degree for a zerodimensional ideal
-   sd:hasDimension Literal - integer, dimension for an ideal
-   sd:hasIsolatedPrimesDegrees Literal - comma separated list of integers, degrees of the prime components of a zero dimensional ideal
-   sd:hasIsolatedPrimesDimensions Literal - comma separated list of integers, dimensions of the isolated prime components

#### Polynomial Systems XML-Resources

The XML-Resource contains mainly the following tags

-   (ModPS only) <basedomain> - the base domain (if not the rationals)
-   <vars> - a list x1,...,xn of variables,
-   <basis> - a sequence of <poly> entries of (commutative) polynomials

For details see the XSchema description [PolynomialSystem.xsd](http://symbolicdata.org/XMLResources/PolynomialSystem.xsd).

#### Changes

-   Change URIs in the following way:
    -   Convert existing examples from type sd:IntPS to sd:Ideal, change URI to symbolicdata.org/Data/Ideal/... -- 2013-0717 HGG, done
    -   Add new entries of type sd:IntegerPolynomialSystem resp. sd:ModularPolynomialSystem to refer to the Polynomial Systems XML resources -- 2013-0717 HGG, done
-   Fix LengthsLists and DegreeLists according to the correct semantic interpretation of the polynomials (in distributive normal form) in the underlying polynomial ring - extract the correct lists of terms, compute their lengths and max. total degrees and arrange that data in increasing order. (Andreas works on that - 2013-07-14)

