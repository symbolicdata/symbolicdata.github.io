---
layout: default
title: Annotations.Ontology
---

### Annotations Ontology

An informal description of the Ontology of the Annotations Knowledge Base developed so far.

#### Metadata and Semantics

Annotations are a generic way to express interrelations between different SymbolicData entries of even different types as an *annotated \*-ary relation*.

In particular, annotations are well suited to express the relation between benchmark data and publications. Create an annotation that points (sd:relatesTo) to the paper and the examples discussed within the paper, and add appropriate textual information as sd:note.

Look for the practices we used so far to create (URI and RDF) labels for such annotations.

Annotation instances belong to the class **sd:Annotation** with predicates

-   standard predicates rdfs:label, rdfs:comment
-   sd:note Literal - Main text of the annotation
-   sd:relatesTo owl:Thing - (multiple) related SymbolicData entries

