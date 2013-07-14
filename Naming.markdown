---
layout: default
title: Naming
---

### Naming Rules

We manage different knowledge bases of meta data that aggregate data (instances) of certain types. Usually a knowledge base is named by a word in plural whereas the instance URIs are within a name space with the same word in singular.

Example:

-   symbolicdata.org/Data/Systems is the URI of the knowledge base of CA Systems
-   symbolicdata.org/Data/System/ is the name prefix of CA Systems URIs

[Knowledge bases](http://symbolicdata.org/RDFData/):

-   Bibliography.ttl - Bibliographical references
-   FanoPolytopes.ttl - Examples of Fano polytopes
-   FreeAlgebras.ttl - Examples of twosided ideals in free algebras
-   GeometryProblemFormulations.ttl - Latex-formulated references of geometry problems
-   People.ttl -
-   PolynomialSystems.ttl - Examples of polynomial systems and ideals, derived from such systems in different ways
-   Systems.ttl - List of CA systems
-   TestSets.ttl - Examples of test sets from Integer Programming

Namespaces (fixed by hgg - 2013-07-14)

-   sdp: symbolicdata.org/Data/Person/ (see [People.Ontology](People.Ontology "wikilink"))
-   sds: symbolicdata.org/Data/System/ (see [System.Ontology](System.Ontology "wikilink"))
-   sdb: symbolicdata.org/Data/BIB/ (see [Bibliography.Ontology](Bibliography.Ontology "wikilink"))
-   sdf: symbolicdata.org/Data/FanoPolytope/ (see [FanoPolytopes.Ontology](FanoPolytopes.Ontology "wikilink"))
-   sdg: symbolicdata.org/Data/GeometryProblem/
-   symbolicdata.org/Data/FreeAlgebra/ (see [FreeAlgebra.Ontology](FreeAlgebra.Ontology "wikilink"))
-   symbolicdata.org/Data/TestSet/ (see [TestSet.Ontology](TestSet.Ontology "wikilink"))
-   todo: sdpol: (2013-07-14, since Andreas is working on it)

The URIs of SD Data have the form <NamespacePrefix>/<identifier> and contain only ASCII symbols to make life easier.

<identifier> consists of substrings matching the regex [a-zA-Z0-9\_-]+ that are concatenated by '.' as separator. For special types more restrictive naming schemes are applied.
