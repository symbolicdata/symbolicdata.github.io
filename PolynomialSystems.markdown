---
layout: default
title: PolynomialSystems
---

### Polynomial Systems and Ideals

#### About

The *Polynomial Systems and Ideals* Data collection contains information about systems of (commutative) polynomials and derived mathematical objects. We assume the user to **have semantic aware tools** to work with polynomials (that supply input and basic computation methods). Such tools are not part of the SymbolicData Collection. Our main semantic aware reference system is [Sage](http://www.sagemath.org/).

**Polynomial systems** are given as XML sequences of polynomials in distributive form in case sensitive variable names x\_1,...,x\_n with integer coefficients, complying to syntactical restrictions defined in [Types.xsd](http://symbolicdata.org/XMLResources/Types.xsd) (to be tightened within a quality assurance process). The polynomials can be directly read by most of the CA systems via string import. The list of variables is part of the XML record.

  
The polynomial syntax for variables has to be tightened within a quality assurance process to avoid characters ()[] that are interpreted as function calls -- hgg, 2013-07-05

The polynomial system is interpreted as a list of polynomials in the polynomial ring Z[x\_1,...,x\_n].

The same polynomial system can be interpreted as generating set of an **Ideal** in different ways - as *flat ideal* (in the polynomial ring over the complete set of variables) or as *parameterized ideals* (if we take part of the variables as parameters and interpret the polynomials as polynomials with polynomial coefficients). Moreover, one can derive new polynomial systems (ideals) from old ones if polynomials are homogenized or if parameters are bound to special values. Such operations (homogenize polynomials that were obtained from a parameterized version of polynomials that were obtained by homogeization itself, etc.).

We do not store all those polynomial systems not to waste space and bandwidth, but use the [Compsite Pattern](http://en.wikipedia.org/wiki/Composite_pattern) to generate child polynomial systems from a parent system by a dedicated number of polynomial time operations (homogeneization, parameterization, bounding variables to special values) by your semantic aware tools. Each example is assigned an RDF-URI and an RDF description to address informations about that example. See the [ ontology definition](PolynomialSystems.Ontology "wikilink") for more details.

#### Structure of the Data

-   The [PolynomialSystems Knowledge Base](http://symbolicdata.org/RDFData/PolynomialSystems.ttl)

  
  
Currently only as ttl-Download, a [Linked Data access](http://linkeddata.org) is on the way.

-   The XML Resources in the repository with data complying to XSchema definitions [PolynomialSystem.xsd](http://symbolicdata.org/XMLResources/PolynomialSystem.xsd), [Common.xsd](http://symbolicdata.org/XMLResources/Common.xsd) (common structure) and [Types.xsd](http://symbolicdata.org/XMLResources/Types.xsd) (type definitions)
    -   [IntPS](http://symbolicdata.org/XMLResources/IntPS) (Polynomial Systems with integer coefficients)
    -   and [ModPS](http://symbolicdata.org/XMLResources/ModPS) (Polynomial Systems with modular coefficients).
-   [PolynomialSystems.Ontology](PolynomialSystems.Ontology "wikilink") - an informal description of the Ontology of the Polynomial Systems Knowledge Base developed so far.

