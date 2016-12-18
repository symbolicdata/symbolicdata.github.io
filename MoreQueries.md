---
layout: default
title: MoreQueries
---

## More SPARQL Queries ##

On this page we give more examples of SPARQL queries. 

Please **post all questions about using SymbolicData Tools and Data** on the [SymbolicData Mailing List](https://groups.google.com/forum/#!forum/symbolicdata).

See [QuickStart](QuickStart "wikilink") for a more detailed explanation of SPARQL Queries or any of the SPARQL tutorials or references at
* <https://jena.apache.org/tutorials/sparql.html>
* <https://www.w3.org/2009/Talks/0615-qbe/>
* <http://www.linkeddatatools.com/querying-semantic-data>
* <https://www.w3.org/2001/sw/DataAccess/rq23/>
* <http://www.ibm.com/developerworks/library/j-sparql/>

### Examples from TestSets Metadata (Normaliz Project) ###

List 
* label
* rank
* number of columns 
* number of rows
* number of extreme rays
* number of Hilbert Basis elements
* external link to the Normaliz Database
* link to the [SD OtherResources](http://symbolicdata.org/OtherResources/TestSets/) TestSets collection
for the "graph examples" from the Normaliz test suite.
<pre>
  PREFIX sd: <http://symbolicdata.org/Data/Model#>
  select 
  distinct ?l ?r ?nc ?nr ?ner ?nhbe ?npb ?nsb
  from <http://symbolicdata.org/Data/TestSets/>
  where {
     ?p a sd:TestSet ; rdfs:label ?l . 
     optional { ?p sd:hasRank ?r . }	
     optional { ?p sd:numberOfColumns ?nc . }		
     optional { ?p sd:numberOfRows ?nr . }	
     optional { ?p sd:hasNumberOfExtremeRays ?ner . }		
     optional { ?p sd:hasNumberOfHilbertBasisElements ?nhbe . }		
     optional { ?p sd:hasNormalizPrimaryBase ?npb . }
     optional { ?p sd:hasNormalizSDBase ?nsb . }
     filter regex(?p, "graph")
  }
  order by ?l
</pre>  
 <a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX+sd%3A+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FModel%23%3E%0Aselect+%0Adistinct+%3Fl+%3Fr+%3Fnc+%3Fnr+%3Fner+%3Fnhbe+%3Fnpb+%3Fnsb%0Afrom+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FTestSets%2F%3E%0Awhere+%7B%0A%3Fp+a+sd%3ATestSet+%3B+rdfs%3Alabel+%3Fl+.+%0Aoptional+%7B+%3Fp+sd%3AhasRank+%3Fr+.+%7D%09%0Aoptional+%7B+%3Fp+sd%3AnumberOfColumns+%3Fnc+.+%7D%09%09%0Aoptional+%7B+%3Fp+sd%3AnumberOfRows+%3Fnr+.+%7D%09%0Aoptional+%7B+%3Fp+sd%3AhasNumberOfExtremeRays+%3Fner+.+%7D%09%09%0Aoptional+%7B+%3Fp+sd%3AhasNumberOfHilbertBasisElements+%3Fnhbe+.+%7D%09%09%0Aoptional+%7B+%3Fp+sd%3AhasNormalizPrimaryBase+%3Fnpb+.+%7D%0Aoptional+%7B+%3Fp+sd%3AhasNormalizSDBase+%3Fnsb+.+%7D%0Afilter+regex%28%3Fp%2C+%22graph%22%29%0A%7D%0Aorder+by+%3Fl"> <span style="color:red; font-size:14pt"> Run this query</span></a>

### Examples from Polytopes Metadata ###

List for all Fano Polytopes 
* uri
* volume
* cone dimension
* number of facets
* file name in [Andreas Paffenholz' collection](https://polymake.org/polytopes/paffenholz/www/fano.html) fano-v4d.tgz
with lattice volume < 100 and at most 7 facets. 

<pre>
     PREFIX sd: <http://symbolicdata.org/Data/Model#> 
     select ?a ?v ?cd ?nfc ?fn
     from <http://symbolicdata.org/Data/FanoPolytopes/>
     where {
       	   ?a a sd:FanoPolytope ;
       	   sd:cone_dim ?cd ; sd:n_facets ?nfc ; sd:hasFileName ?fn ; 
       	   sd:lattice_volume ?v . 
       	   filter ((xsd:integer(?v)<100) and (xsd:integer(?nfc)<7))
     }
</pre>

 <a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX+sd%3A+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FModel%23%3E+%0A+++select+%3Fa+%3Fv+%3Fcd+%3Fnfc+%3Ffn%0A+++from+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FFanoPolytopes%2F%3E%0A+++where+%7B%0A+++%3Fa+a+sd%3AFanoPolytope+%3B%0A+++sd%3Acone_dim+%3Fcd+%3B+sd%3An_facets+%3Fnfc+%3B+sd%3AhasFileName+%3Ffn+%3B+%0A+++sd%3Alattice_volume+%3Fv+.+%0A+++filter+%28%28xsd%3Ainteger%28%3Fv%29%3C100%29+and+%28xsd%3Ainteger%28%3Fnfc%29%3C7%29%29%0A+++%7D"> <span style="color:red; font-size:14pt"> Run this query</span></a>

List 
* number of nodes
* number of vertices
* external link to polymake file
for all Birkhoff Polytopes with 4 nodes and at most 20 vertices ordered by descending number of vertices.

<pre>
   PREFIX sd: <http://symbolicdata.org/Data/Model#> 
   select ?n ?v ?fn
   from <http://symbolicdata.org/Data/BirkhoffPolytopes/>
   where {
   ?a a sd:BirkhoffPolytope ;
   sd:hasNodes ?n ; sd:hasVertices ?v; sd:hasPolymakeFile ?fn . 
   filter ((xsd:integer(?n)=4) and (xsd:integer(?v)<=20))
   }
   order by desc(xsd:integer(?v))
</pre>
   
 <a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX+sd%3A+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FModel%23%3E+%0A+++select+%3Fn+%3Fv+%3Ffn%0A+++from+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FBirkhoffPolytopes%2F%3E%0A+++where+%7B%0A+++%3Fa+a+sd%3ABirkhoffPolytope+%3B%0A+++sd%3AhasNodes+%3Fn+%3B+sd%3AhasVertices+%3Fv%3B+sd%3AhasPolymakeFile+%3Ffn+.+%0A+++filter+%28%28xsd%3Ainteger%28%3Fn%29%3D4%29+and+%28xsd%3Ainteger%28%3Fv%29%3C%3D20%29%29%0A+++%7D%0A+++order+by+desc%28xsd%3Ainteger%28%3Fv%29%29"> <span style="color:red; font-size:14pt"> Run this query</span></a>

### Examples from Transitive Groups Metadata ###

List 
* name in the Group database
* order
* external link to the entry in the Group database
for all nilpotent transitive groups of order 32.

<pre>
   PREFIX sd: <http://symbolicdata.org/Data/Model#> 
   select ?n ?o ?url
   from <http://symbolicdata.org/Data/TransitiveGroups/>
   where {
   ?a a sd:TransitiveGroup ; 
   sd:hasProperty sd:nilpotent; sd:hasName ?n ; sd:hasOrder ?o ;
   sd:hasURL ?url .  
   filter (xsd:integer(?o)=32)
   }
</pre>
 
 <a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX+sd%3A+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FModel%23%3E+%0A+++select+%3Fn+%3Fo+%3Furl%0A+++from+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FTransitiveGroups%2F%3E%0A+++where+%7B%0A+++%3Fa+a+sd%3ATransitiveGroup+%3B+%0A+++sd%3AhasProperty+sd%3Anilpotent%3B+sd%3AhasName+%3Fn+%3B+sd%3AhasOrder+%3Fo+%3B%0A+++sd%3AhasURL+%3Furl+.++%0A+++filter+%28xsd%3Ainteger%28%3Fo%29%3D32%29%0A+++%7D"> <span style="color:red; font-size:14pt"> Run this query</span></a>

Number of nilpotent transitive groups (order, count) in the database of given order.

<pre>
   PREFIX sd: <http://symbolicdata.org/Data/Model#> 
   select ?o as ?order count(?a) as ?count
   from <http://symbolicdata.org/Data/TransitiveGroups/>
   where {
   ?a a sd:TransitiveGroup ; 
   sd:hasProperty sd:nilpotent; sd:hasOrder ?o .  
   }
</pre>
 
 <a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX+sd%3A+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FModel%23%3E+%0A+++select+%3Fo+as+%3Forder+count%28%3Fa%29+as+%3Fcount%0A+++from+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FTransitiveGroups%2F%3E%0A+++where+%7B%0A+++%3Fa+a+sd%3ATransitiveGroup+%3B+%0A+++sd%3AhasProperty+sd%3Anilpotent%3B+sd%3AhasOrder+%3Fo+.++%0A+++%7D%0A"> <span style="color:red; font-size:14pt"> Run this query</span></a>

Inspect the special examples (uri, external link to the Group Database) of a nilpotent group of order 162.

<pre>
   PREFIX sd: <http://symbolicdata.org/Data/Model#> 
   select ?a ?url
   from <http://symbolicdata.org/Data/TransitiveGroups/>
   where {
   ?a a sd:TransitiveGroup ; sd:hasURL ?url; 
   sd:hasProperty sd:nilpotent; sd:hasOrder 162 .  
   }
</pre>
 
 <a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX+sd%3A+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FModel%23%3E+%0A+++select+%3Fa+%3Furl%0A+++from+%3Chttp%3A%2F%2Fsymbolicdata.org%2FData%2FTransitiveGroups%2F%3E%0A+++where+%7B%0A+++%3Fa+a+sd%3ATransitiveGroup+%3B+sd%3AhasURL+%3Furl%3B+%0A+++sd%3AhasProperty+sd%3Anilpotent%3B+sd%3AhasOrder+162+.++%0A+++%7D"> <span style="color:red; font-size:14pt"> Run this query</span></a>
