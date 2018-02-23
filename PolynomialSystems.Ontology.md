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

Due to the universal property of Z[x\_1,...,x\_n] such a polynomial list is the semantic starting point for all further constructions. There is a unique URI for each polynomial system in the RDF Data, e.g.,

  
symbolicdata.org/Data/IntPS/Wang-92c

for the polynomial system with the XML Resource

  
symbolicdata.org/XMLResources/IntPS/Wang-92c.xml

The polynomial system defines a **flat ideal** in the ring Q[x\_1,...,x\_n] that is referenced as

  
symbolicdata.org/Data/Ideal/Wang-92c

It is a special case of an entry point to the ideals dependency tree and has a predicate *sd:relatedPolynomialSystem* that refers to the underlying polynomial system.

  
A flat ideal does not have *sd:hasParameters* predicate.

All **other ideals** are derived along the *ideals dependency (oriented) tree* from already known ideals (parents) as *push forward images* or *inverse push forward images* of the generating polynomials of the known ideal along canonical ring homomorphisms by a restricted number of operations:

-   interpreting part of the variables as parameters
    -   sd:parameterize ParentIdealURI
    -   sd:hasParameters ParameterList - comma separated list of variable names serving as parameters
    -   sd:hasVariables VariableList - comma separated list of variable names serving as variables
    -   The variable list of the parent is the disjoint uniion of ParameterList and VariableList
-   homogenizing polynomials,
    -   sd:homogenize ParentIdealURI
    -   sd:homogenizedWith VarName
-   flatten an ideal (inverse to parameterization)
    -   sd:flatten ParentIdealURI
-   substituting special values for variables.
    -   not yet included.

  
**Aside:** Given a ring homomorphism \\\\phi: R -\> S and ideals I\\\\subset R and J\\\\subset S the notion of pull back \\\\phi\^{-1}(J) and push forward \\\\phi(I)\*S of ideals are well known. On the level of generators we have to be more careful: Given a ring homomorphism \\\\phi: R -\> S the *push forward* ideal of I=(f\_1,...,f\_m) is generated by the pushed forward polynomials \\\\phi(f\_1),...,\\\\phi(f\_m). For the *inverse push forward image* we assume that \\\\phi is injective and the generators J=(g\_1,...,g\_m)\\\\subset S are in the image \\\\phi(R). Then there are unique elements g\_i'\\\\in R such that \\\\phi(g\_i')=g\_i and J is the push forward ideal of I=(g\_1',...,g\_m')\\\\subset R. We call I the inverse push forward image. For homogenization as inverse push forward image the story is even a little more tricky, but we leave the details to the reader, since this does not affect the procedure (homogenization of given polynomials) itself. Note that I\\\\subset \\\\phi\^{-1}(J) but \\\\phi\^{-1}(J) can be much larger and hard to compute.

#### Identification

A hard problem is to identify if a given external polynomial systems is contained in the data, since the same polynomial system is given in the literature with different variable names in different orders. Moreover, there are several "almost equal" examples, that came into life by missprints but started their own life afterwards.

To navigate within the examples we compute and store invariants of the generating polynomials and the ideals. For a given generating set we interpret the polynomials in the given ring in expanded distributive form, extract the list of terms, compute length lists and (total) degree lists and store them in (independently) ordered form as values of the predicates *sd:hasDegreeList* and *sd:hasLengthsList*.

  
Change sd:hasLengthsList to sd:hasLengthList ? -- HGG

These values are independent from the variable names used in different sources for the same example and allow to shrink the search space to identify if a given example is already contained in our collection.

#### Predicates for sd:Ideal

Classes:

-   sd:Ideal
-   sd:HomogeneousIdeal

Predicates:

-   sd:hasVariables Literal - comma separated list of variables
-   sd:hasParameters Literal - comma separated list of parameters
-   sd:hasDegreeList - comma separated list of integers in increasing order, degrees of the generating polynomials
    -   order has to be fixed
-   sd:hasLengthsList - comma separated list of integers in increasing order, number of terms of the generating polynomials
    -   order has to be fixed

Invariants of the ideal

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
