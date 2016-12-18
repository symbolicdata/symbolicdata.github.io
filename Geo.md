---
layout: default
title: Geo
---

### Dynamical Geometry and Geometry Theorem Proving

#### About

Many hard examples in Polynomial Systems Solving originate from problems in Geometry Theorem Proving. Geometric configurations and constraints can be formulated as algebraic conditions on the coordinates of the geometric objects within the configuration. A main road of mechanized geometry theorem proving is such a translation of geometric into algebraic problems about Polynomial Systems Solving, and such examples of algebraic problems were collected within SymbolicData version 1. A large collection of examples from [S.C. Chou's famous book](http://dl.acm.org/citation.cfm?id=39060) was supplied by Malte Witte in 2001 (at those times student at Leipzig Univ.).

Starting from such a more algebraic point of view, with SymbolicData version 2 H.-G. Gräbe developed a (functional) geometric language for Geometry Straight Line Programs, the [GeoCode](GeoCode "wikilink") language, to describe the dynamic geometric nature of those examples directly. These descriptions introduce a more concise distinction between basic dynamic elements (movable points and sliders), geometric constructions (building up the whole picture step by step from the basic dynamic elements), geometric constraints (boolean constraint conditions that translate algebraically into zeroes of rational expressions) and geometric conclusions (boolean conditions, too).

These descriptions can be used as input to the [GeoProver Software](Software.GeoProver "wikilink") that aims to translate the problem settings from the generic language into polynomial systems syntax to be solved with the target CAS (Maple, Mathematica, MuPAD, Reduce for the moment).

During redesign it turned out that there is a close relation to the description of drawings within Dynamical Geometry Software (DGS). The main difference is in the nature of variables for geometric objects - the SymbolicData descriptions (SD version 2) used a call by value semantics for geometric objects, the variable semantics in DGS is call by reference since all even intermediate geometric objects (even hidden ones) are required to generate the drawing and to track the dynamics. The main difference between both semantics is that a call by value semantics allows for nested function calls, but a call by reference semantics requires function calls with explicit variable names as parameters.

To change the semantics required to denest nested geometric function calls, i.e., to transform the geometry problems from a weak (or extended) Geometry Straight Line syntax, allowing nested function calls, to a strong Geometry Straight Line syntax without nested function calls. This was done during the relaunch of SymbolicData version 3.

#### Structure of the Data

The SymbolicData collection contains

-   [GeometryProblems.ttl](http://symbolicdata.org/RDFData/GeometryProblems.ttl) - a knowledge base of **Geometry Problem Formulations** in latex
    -   The URI of the problem is used as reference in different proof schemes of the problem
-   [GeoCode.ttl](http://symbolicdata.org/RDFData/GeoCode.ttl) - the specification of the **[GeoCode](GeoCode "wikilink") language**, a generic language to describe geometry problems, generate drawings and proof schemes
-   [GeoProofSchemes](http://symbolicdata.org/XMLResources/GeoProofSchemes) - XML Resources containing formally specified **Proof Schemes** for different problems using the GeoCode language
-   [GeoProofSchemes.ttl](http://symbolicdata.org/RDFData/GeoProofSchemes.ttl) - Additional information about the algebraization of the geometric proof scheme
    -   Proof schemes of constructive type do not contain a constraints part. The conclusion translates algebraically to a complicated rational function that has to be shown to vanish generically, i.e., to simplizy to zero.
    -   Proof schemes of equational type translate into Polynomial Systems Solving tasks and are related to different problems in SymbolicData [PolynomialSystems](PolynomialSystems "wikilink") part.

