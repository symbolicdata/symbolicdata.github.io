---
layout: default
title: Naming
---

### Naming Rules

#### General Naming Rules

We manage different knowledge bases of meta data that aggregate data (instances) of certain types. Usually a knowledge base is named by a word in plural whereas the instance URIs are within a name space with the same word in singular.

Example:

-   symbolicdata.org/Data/Systems is the URI of the knowledge base of CA Systems
-   symbolicdata.org/Data/System/ is the name prefix of CA Systems URIs

The URIs of SD Data have the form <NamespacePrefix>/<identifier> and contain only ASCII symbols to make life easier.

<identifier> consists of substrings matching the regex [a-zA-Z0-9\_-]+ that are concatenated by '.' as separator. For special types more restrictive naming schemes are applied.

To have human readable URIs they are generated from parts of the data that are **ASCII fixed** to get identifiers with ASCII characters only (substituting á -\> a, ä -\> ae, ß -\> ss etc.)

#### Knowledge bases

-   Annotations.ttl - Annotations
-   Bibliography.ttl - Bibliographical references
-   FanoPolytopes.ttl - Examples of Fano polytopes
-   FreeAlgebras.ttl - Examples of twosided ideals in free algebras
-   GAlgebras.ttl - Examples of twosided ideals in almost commutative polynomial rings (G-Algebras)
-   GeoCode.ttl - The GeoCode language specification used for GeoProofSchemes
-   GeometryProblemFormulations.ttl - Latex-formulated references of geometry problems
-   GeoProofSchemes.ttl - Examples of Proof Schemes from geometry
-   People.ttl - People involved in SymbolicData or mentioned in the data
-   PolynomialSystems.ttl - Examples of polynomial systems and ideals, derived from such systems in different ways
-   Systems.ttl - List of CA systems
-   TestSets.ttl - Examples of test sets from Integer Programming

#### Namespaces

We try to reuse established namespaces and namespace abbreviations as, e.g., listed in <http://www.prefix.cc> or <http://lov.okfn.org>. It is a strong advice by Tim Berners-Lee to do so, and he set out the (moral) award to earn the [fifth star](http://5stardata.info) for ontology projects that follow this advice.

We use the standard namespaces rdf, rdfs, owl, xsd and the following ontologies:

-   foaf: <http://xmlns.com/foaf/0.1/> (see [People](People "wikilink"))
-   dct: <http://purl.org/dc/terms/> (see [Bibliography](Bibliography "wikilink"))
-   org: <http://www.w3.org/ns/org#> (see org:Organisation in [People](People "wikilink"))
-   skos: <http://www.w3.org/2004/02/skos/core#> (as superconcept of org: and sd:)
-   sd: <http://symbolicdata.org/Data/Model#> (our own namespace for concepts)
    -   Note that Virtuoso in its default setting uses sd for another ontology. I fixed that for symbolicdata.org (HGG,2013-08-02)

Inner project abbreviations:

-   sdp: <http://symbolicdata.org/Data/Person/> (see [People.Ontology](People.Ontology "wikilink"))
-   sdb: <http://symbolicdata.org/Data/BIB/> (see [BIB.Ontology](BIB.Ontology "wikilink"))
-   sdg: <http://symbolicdata.org/Data/GeometryProblem/>

