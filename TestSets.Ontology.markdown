---
layout: default
title: TestSets.Ontology
---

### Test Sets Ontology

An informal description of the Ontology of the TestSets Knowledge Base developed so far.

The following has to be fixed.

* * * * *

All TestSet instances belong to the owl:Class **sd:TestSet** that is the rdfs:domain of the predicates

-   sd:hasVariables Literal - comma separated list of (non commuting) variables
-   sd:hasParameters Literal - comma separated list of (commuting) parameters
-   sd:uptoDegree Literal - integer, semantics to be fixed
-   sd:relatedXMLResource URI - the Resource file
-   standard predicates sd:createdAt, sd:createdBy, rdfs:comment

#### GAlgebra XML-Resources

The XML-Resource contains mainly the following tags

-   <basis> - a sequence of <rows> with comma separated integers

For details see the XSchema description [TestSets.xsd](http://symbolicdata.org/XMLResources/TestSets.xsd).
