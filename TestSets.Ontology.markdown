---
layout: default
title: TestSets.Ontology
---

### Test Sets Ontology

An informal description of the Ontology of the TestSets Knowledge Base developed so far.

There are two notions, "old TestSets" (according to notational conventions introduces by Raymond Hemmecke in 2002) and "new TestSets" (according to notational conventions of the [Normaliz group](http://www.home.uni-osnabrueck.de/wbruns/normaliz/).)

All TestSet instances belong to the owl:Class **sd:TestSet** that is the rdfs:domain of the

-   standard predicates sd:createdAt, sd:createdBy, rdfs:comment

are described by an integer matrix with

-   sd:numberOfRows xsd:integer - number of rows
-   sd:hasAmbientDimension xsd:integer - number of columns

and refers to sources (old TestSets)

-   sd:hasBase URI of XML-Resource - Input matrix
-   sd:hasHilbertBase URI of XML-Resource - Hilbert base as matrix (if available)
-   sd:hasRayBase URI of XML-Resource - Ray base as matrix (if available)

resp. to sources (new TestSets)

-   sd:hasNormalizPrimaryBase remote URL - URL at [the Normaliz site](http://www.home.uni-osnabrueck.de/wbruns/normaliz/) to a file that may contain more than one example
-   sd:hasNormalizSDBase URI of OtherResource - URL to a file within the SD collection of OtherResources, that contains exactly that example as Normaliz zip-file.

and (to be added) fingerprints

#### TestSets XML-Resources

The XML-Resource contains mainly the following tags

-   <basis> - a sequence of <rows> with comma separated integers

For details see the XSchema description [TestSets.xsd](http://symbolicdata.org/XMLResources/TestSets.xsd).

#### TestSets OtherResources

These resources are encoded as zip-files (with .in and .out files) according to the [Normaliz conventions](http://www.home.uni-osnabrueck.de/wbruns/normaliz/).
