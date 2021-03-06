---
layout: default
title: QuickStart
---

## QuickStart

On this page we give a brief overview over SPARQL and demonstrate a very simple use case of Symbolic Data.

  
Please **post all questions about using SymbolicData Tools and Data** on the [SymbolicData Mailing List](https://groups.google.com/forum/#!forum/symbolicdata)

To better understand the query on this page it helps to know that the data is stored as so called triples. A triple consist of a subject, a predicate and an object. Note that these terms are used rather loosely and not adhering to natural language grammar rules. Examples are:

-   PS10 ­— is a — Polynomial System
-   PS10 — has degree of — 18
-   Group1 — has group order — 2\^2\*3\^3

### Using SPARQL to retrieve data

A SPARQL request always yields (not necessarily distinct) assignments to a set of variables. The variables are listed after the SELECT command:

<pre>
  SELECT ?a ?b ?c …
</pre>

or, if only distint assignments are wanted:

<pre>
  SELECT DISTINCT ?a ?b ?c …
</pre>

Generally we don't want all possible assignments but only assigments that satisfy certain conditions. This can be written like this:

<pre>
  SELECT ?a ?b ?c WHERE {
    condition1 . 
    condition2 .
    condition3
  }
</pre>

The dot here stands for a logical 'and'. These conditions may also introduce additional variables where it is convenient. There are also more elaborate methods to extract exactly the things you want but we concentrate on this simple method at first.

To test the following queries yourself, go to <http://symbolicdata.org:8890/sparql> or try the given link directly.

### Examples

**1)** Let's search all triples and see what predicates are used to get a general idea about the data:

<pre>
  SELECT DISTINCT ?p WHERE {
    ?s ?p ?o
  }
</pre>

This will extract the predicate of all triples. Since a given predicate usually is used in a lot of sentences we indicate that we want a list of distinct values.

*NB:* This list does not contain a lot information. Usually additional information is given in a documentation. For the polynomial systems you can find it here: <http://symbolicdata.github.io/PolynomialSystems.Ontology>

**2)** To retrieve all possible values ('objects') to a given predicate <pred>:

<pre>
  SELECT DISTINCT ?v WHERE {
    ?s &lt;pred&gt; ?v
    }
</pre>

These values could be used to fill a pull down menu using PHP, but depending on the the number of values this might be useful or not.

**3)** Display Integer Polynomial Systems ('a' is a shortcut for the predicate 'rdf:type')

<pre>
  PREFIX sd: <http://symbolicdata.org/Data/Model#>
    SELECT ?s WHERE {
      ?s a sd:Ideal
    }
</pre>
<a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model%23%3ESELECT%20?s%20WHERE%20{?s%20a%20sd:Ideal}"><span style="color:red; font-size:16pt"> Run this query</span></a>

**4)** Display all Integer Polynomial Systems of degree 20 ('^^xsd:integer' ist eine Typergänzung für das Literal "20" und sagt SPARQL, dass dieser String als Integer zu interpretieren ist)

<pre>
  PREFIX sd: <http://symbolicdata.org/Data/Model#>
    SELECT ?s WHERE {
      ?s a sd:Ideal .
      ?s sd:hasDegree "20"^^xsd:integer .
    }
</pre>
<a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model%23%3E%20SELECT%20?s%20WHERE{?s%20a%20sd:Ideal%20.%20?s%20sd:hasDegree%20%2220%22^^xsd:integer}"> <span style="color:red;  font-size:16pt"> Run this query</span></a>

**5)** Maybe we already have a polynomial system, say Caprasse and just want all sentences (triples) about this polynomial system:

<pre>
  PREFIX sdpol: <http://symbolicdata.org/Data/Ideal/>
  SELECT ?p ?o WHERE {
    sdpol:Caprasse ?p ?o
  }
</pre>
<a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX%20sdpol:%20%3Chttp://symbolicdata.org/Data/Ideal/%3E%20SELECT%20?p%20?o%20WHERE{sdpol:Caprasse%20?p%20?o}"><span style="color:red;  font-size:16pt"> Run this query</span></a>

You might noticed that there are some values where there the object is quite complex, like for instance the variable list with values like "x,y,z,t". One could also parse these values (e.g. do a regex match on them, all within a SPARQL query). But maybe these values turn out to be so important that you don't want to parse them but rather query them directly. In this case the data could easily be modified (but we're not going into detail here).

**6)** Getting a table-like display of all entries can also be done:

<pre>
  PREFIX sd: <http://symbolicdata.org/Data/Model#>
    SELECT ?a ?dim ?deg ?ll WHERE {
      ?a a sd:Ideal .
      ?a sd:hasDimension ?dim .
      ?a sd:hasDegree ?deg .
      ?a sd:hasLengthsList ?ll
    }
</pre>
<a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model%23%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE{?a%20a%20sd:Ideal%20.%20?a%20sd:hasDimension%20?dim%20.%20?a%20sd:hasDegree%20?deg%20.%20?a%20sd:hasLengthsList%20?ll}"><span style="color:red;  font-size:16pt"> Run this query</span></a>

This query could be send as HTTP request and then rendered into a HTML table by a quite simple PHP script. (Details on this will be included later)

### Some more advanced features

For some polynomial systems there is no dimension specified. The previous query does not find these. You can fix this by giving the condition on dimension an optional modifier:

<pre>
  PREFIX sd: <http://symbolicdata.org/Data/Model#>
    SELECT ?a ?dim ?deg ?ll WHERE {
      ?a a sd:Ideal .
      OPTIONAL {?a sd:hasDimension ?dim} .
      ?a sd:hasDegree ?deg .
      ?a sd:hasLengthsList ?ll
    }
</pre>
<a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model%23%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE{?a%20a%20sd:Ideal%20.%20OPTIONAL{?a%20sd:hasDimension%20?dim}%20.%20?a%20sd:hasDegree%20?deg%20.%20?a%20sd:hasLengthsList%20?ll}"> <span style="color:red;  font-size:16pt"> Run this query</span></a>

Now suppose we want to work with precisely the polynomial system that are missing a dimension. Here we could filter the result:

<pre>
  PREFIX sd: <http://symbolicdata.org/Data/Model#>
    SELECT ?a ?dim ?deg ?ll WHERE {
      ?a a sd:Ideal .
      OPTIONAL {?a sd:hasDimension ?dim} .
      ?a sd:hasDegree ?deg .
      ?a sd:hasLengthsList ?ll .
      FILTER(!BOUND(?dim))
    }
</pre>
<a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model%23%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE{?a%20a%20sd:Ideal%20.%20OPTIONAL{?a%20sd:hasDimension%20?dim}%20.%20?a%20sd:hasDegree%20?deg%20.%20?a%20sd:hasLengthsList%20?ll%20.%20FILTER(!BOUND(?dim))}"> <span style="color:red;  font-size:16pt"> Run this query</span></a>

If we want not just degree 20 but a degree within a certain range, it is useful to introduce a variable ?d for the degree and include another condition for the variable ?d.

<pre>
  PREFIX sd: <http://symbolicdata.org/Data/Model#>
    SELECT ?s ?d WHERE {
      ?s a sd:Ideal .
      ?s sd:hasDegree ?d .
      FILTER(xsd:integer(?d) <= 20)
  }
</pre>
<a href="http://symbolicdata.org:8890/sparql?format=text%2Fhtml&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model%23%3E%20SELECT%20?s%20?d%20WHERE{?s%20a%20sd:Ideal%20.%20?s%20sd:hasDegree%20?d%20.%20FILTER(xsd:integer(?d)%20%3C=%2020)}"> <span style="color:red;  font-size:16pt"> Run this query</span></a>
