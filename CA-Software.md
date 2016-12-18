---
layout: default
title: CA-Software
---

## CA Software Data ##

###  About ### 

The ''CA Software'' Data collection contains data of type sd:CAS that represent CA systems that were at some time in the focus of SymbolicData followers.  Most of the references now point with [owl:sameAs](http://www.w3.org/TR/owl-ref/#sameAs-def) to the corresponding entry in the [swmath.org](http://www.swmath.org/) collection of mathematical software.

###  Structure of the Data ### 

CA Software entries are instances of the RDF type '''sd:CAS'''. The naming scheme is &lt;symbolicdata.org/Data/System/nameofthesystem&gt; where 'nameofthesystem' is the (concatenated) name of the system in lower case letters matching [ \w+ ].

See 
* The [CA Software Knowledge Base](http://symbolicdata.org/RDFData/Systems.ttl) in Turtle format and as [Linked Data](http://symbolicdata.org/Data/Systems/).

Namespaces:
* owl: &lt;http://www.w3.org/2002/07/owl#&gt;
* dct: &lt;http://purl.org/dc/terms/&gt; 

Records of type '''sd:CAS''' have the following predicates
* owl:sameAs URI reference to the [http://www.swmath.org/ swmath.org] collection. 
or (for 3 systems not listed in swmath - [http://symbolicdata.org/Data/System/ASYS Reduce package ASYS], and the systems [http://symbolicdata.org/Data/System/Points Points] and [http://symbolicdata.org/Data/System/QPoints QPoints])
* sd:lastUpdate xsd:date
* sd:hasURL URI - homepage of the CAS
* dct:license URI - the software license
* dct:creator foaf:Person - authors of the CAS (multiple)
* dct:description Literal - a short description of the software

###  Changes ### 

* Naming scheme changed to lowercase standard. (HGG, 2016-07-22)
* Changed to dct: prefix  (HGG, 2013-07-31)
* Changed to swmath references  (HGG, 2013-07-14)
* Update to dcterms ontology (HGG, 2013-07-14)
