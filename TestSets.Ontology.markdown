---
layout: default
title: TestSets.Ontology
---

### Test Sets Ontology

All TestSets are stored according to notational conventions of the [Normaliz group](http://www.home.uni-osnabrueck.de/wbruns/normaliz/) that provides a tool for computations in affine monoids, vector configurations, lattice polytopes, and rational cones. They are represented by a list of integer vectors (of length m = number of rows) in an ambient affine space (of dimension n = number of columns).

The Test Sets Ontology is based upon the [Normaliz model conventions](http://www.home.uni-osnabrueck.de/wbruns/normaliz/):

A TestSet instance belongs to the owl:Class **sd:TestSet** and can belong to one of the subclasses

-   sd:Equations - Test Set of Equations Type
-   sd:Polytope - Test Set of Polytope Type
-   sd:Normalization - Test Set of Normalization Type
-   sd:IntegralClosure - Test Set of Integral Closure Type
-   sd:Hyperplanes - Test Set of Hyperplanes Type

A TestSet instance has

-   common standard predicates rdfs:comment, rdfs:label, sd:hasOrigin
-   pointers to the related resource
    -   sd:hasNormalizSDBase URI - input file in Normaliz format stored at <http://symbolicdata.org/OtherResources/TestSets/>
    -   sd:hasNormalizPrimaryBase URI - (optional) result file stored at <http://www.home.uni-osnabrueck.de/wbruns/normaliz/InterChallenge.html>. Such a file may contain more than one example.
-   fingerprint predicates (meaning has to be clarified)
    -   sd:numberOfColumns xsd:integer - number of columns
    -   sd:numberOfRows xsd:integer - number of rows

The different subclasses provide different additional information:

-   sd:Normalization, sd:Hyperplanes, sd:IntegralClosure, sd:Equations
    -   sd:hasNumberOfExtremeRays xsd:integer
    -   sd:hasSupportingHyperplanes xsd:integer
    -   sd:hasNumberOfHilbertBasisElements xsd:integer
    -   sd:hasRank xsd:integer

-   sd:Polytope
    -   sd:hasSupportingHyperplanes xsd:integer - number of supporting hyperplanes
    -   sd:hasDimension xsd:integer - dimension within the ambient space
    -   sd:hasNumberOfLatticePoints xsd:integer
    -   sd:hasNumberExtremePoints xsd:integer

#### TestSets Resources

[TestSets resources](http://symbolicdata.org/OtherResources/TestSets/) are provides as zip-files according to the [Normaliz conventions](http://www.home.uni-osnabrueck.de/wbruns/normaliz/).
