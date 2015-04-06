---
layout: default
title: TestSets.Ontology
---

### Test Sets Ontology

An informal description of the Ontology of the TestSets Knowledge Base developed so far.

All TestSets are converted to the new format according to notational conventions of the [Normaliz group](http://www.home.uni-osnabrueck.de/wbruns/normaliz/).

A TestSet instance belongs to the owl:Class **sd:TestSet** and can belong to one of the subclasses

-   sd:Equations - Test Set of Equations Type
-   sd:Polytope - Test Set of Polytope Type
-   sd:Normalization - Test Set of Normalization Type
-   sd:IntegralClosure - Test Set of Integral Closure Type
-   sd:Hyperplanes - Test Set of Hyperplanes Type

A TestSet instance has

-   standard predicates rdfs:comment, rdfs:label, sd:hasOrigin
-   pointers to the related resource
    -   sd:hasNormalizSDBase URI - input file in Normaliz format stored at <http://symbolicdata.org/data/OtherResources/TestSets/>
    -   sd:hasNormalizPrimaryBase URI - (optional) result file stored at <http://www.home.uni-osnabrueck.de/wbruns/normaliz> /InterChallenge.html. Such a file may contain more than one example.
-   fingerprint predicates (meaning has to be clarified)
    -   sd:hasDimension xsd:integer
    -   sd:hasNumberExtremePoints xsd:integer
    -   sd:hasNumberOfExtremeRays xsd:integer
    -   sd:hasNumberOfHilbertBasisElements xsd:integer
    -   sd:hasNumberOfLatticePoints xsd:integer
    -   sd:hasRank xsd:integer
    -   sd:hasSupportingHyperplanes xsd:integer
    -   sd:numberOfColumns xsd:integer - number of columns
    -   sd:numberOfRows xsd:integer - number of rows

#### TestSets Resources

TestSets resources are provides as zip-files according to the [Normaliz conventions](http://www.home.uni-osnabrueck.de/wbruns/normaliz/).
