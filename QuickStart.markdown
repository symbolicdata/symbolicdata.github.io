---
layout: default
title: QuickStart
---

On this page we give a brief overview over SPARQL and demonstrate a very simple use case of Symbolic Data.

To better understand the query on this page it helps to know that the data is stored as so called triples. A triple consist of a subject, a predicate and an object. Note that these terms are used rather loosely and not adhering to natural language grammar rules. Examples are:

-   PS10 ­— is a — Polynomial System
-   PS10 — has degree of — 18
-   Group1 — has group order — 2\^2\*3\^3

### Using SPARQL to retrieve data

A SPARQL request always yields (not necessarily distinct) assignments to a set of variables. The variables are listed after the SELECT command:

`SELECT ?a ?b ?c …`

or, if only distint assignments are wanted:

`SELECT DISTINCT ?a ?b ?c …`

Generally we don't want all possible assignments but only assigments that satisfy certain conditions. This can be written like this:

`SELECT ?a ?b ?c WHERE {`
`  condition1 . `
`  condition2 .`
`  condition3`
`}`

The dot here stands or a logical 'and'. These conditions may also introduce additional variables where it is convenient. There are also more elaborate methods to extract exactly the things you want but we concentrate on this simple method at first.

To test the following queries yourself, go to <http://symbolicdata.ontowiki.net/>. On the left hand side select the knowledge base "SD Polynomial Systems Data". Now you can choose "SPARQL Query Editor" from the "Extras" menu on the top left. Note however that the Ontowiki is just one view on the data. For presenting your data on your side you might want to use a different view.

So, let's search all triples and see what predicates are used to get a general idea about the data:

`SELECT DISTINCT ?p WHERE {`
`  ?s ?p ?o`
`}`

This will extract the predicate of all triples. Since a given predicate usually is used in a lot of sentences we indicate that we want a list of distinct values.

*NB:* This list does not contain a lot information. Usually additional information is given in a documentation. For the polynomial systems you can find it here: <http://symbolicdata.org/wiki/PolynomialSystems.Ontology>

To retrieve all possible values ('objects') to a given predicate PRED:

`SELECT DISTINCT ?v WHERE {`
`  ?s PRED ?v`
`}`

These values could be used to fill a pull down menu using PHP, but depending on the the number of values this might be useful or not.

Display Integer Polynomial Systems

`PREFIX sd: `<http://symbolicdata.org/Data/Model/>
`SELECT ?s WHERE {`
`  ?s a sd:IntPS`
`}`
[`Run` `this` `query`](http://symbolicdata.org:8890/sparql?output=htmltab&query=%20PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3ESELECT%20?s%20WHERE%20{?s%20a%20sd:IntPS})

Display all Integer Polynomial Systems of degree 20

`PREFIX sd: `<http://symbolicdata.org/Data/Model/>
`SELECT ?s WHERE {`
`  ?s a sd:IntPS .`
`  ?s sd:hasDegree "20"`
`}`
[`Run` `this` `query`](http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?s%20WHERE{?s%20a%20sd:IntPS%20.%20?s%20sd:hasDegree%20%2220%22})

Maybe we already have a polynomial system, say Caprasse and just want all sentences (triples) about this polynomial system:

`PREFIX sdpol: `<http://symbolicdata.org/Data/PolynomialSystems/>
`SELECT ?p ?o WHERE {`
`  sdpol:Caprasse ?p ?o`
`}`
[`Run` `this` `query`](http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sdpol:%20%3Chttp://symbolicdata.org/Data/PolynomialSystems/%3E%20SELECT%20?p%20?o%20WHERE{sdpol:Caprasse%20?p%20?o})

You might noticed that there are some values where there the object is quite complex, like for instance the variable list with values like "x,y,z,t". One could also parse these values (e.g. do a regex match on them, all within a SPARQL query). But maybe these values turn out to be so important that you don't want to parse them but rather query them directly. In this case the data could easily be modified (but we're not going into detail here).

Getting a table-like display of all entries can also be done:

`PREFIX sd: `<http://symbolicdata.org/Data/Model/>
`SELECT ?a ?dim ?deg ?ll WHERE {`
`  ?a a sd:IntPS .`
`  ?a sd:hasDimension ?dim .`
`  ?a sd:hasDegree ?deg .`
`  ?a sd:hasLengthsList ?ll`
`}`
[`Run` `this` `query`](http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE{?a%20a%20sd:IntPS%20.%20?a%20sd:hasDimension%20?dim%20.%20?a%20sd:hasDegree%20?deg%20.%20?a%20sd:hasLengthsList%20?ll})

This query could be send as HTTP request and then rendered into a HTML table by a quite simple PHP script. (Details on this will be included later)

### Some more advanced features

For some polynomial systems there is no dimension specified. The previous query does not find these. You can fix this by giving the condition on dimension an optional modifier:

`PREFIX sd: `<http://symbolicdata.org/Data/Model/>
`SELECT ?a ?dim ?deg ?ll WHERE {`
`  ?a a sd:IntPS .`
`  OPTIONAL {?a sd:hasDimension ?dim} .`
`  ?a sd:hasDegree ?deg .`
`  ?a sd:hasLengthsList ?ll`
`}`
`[`[`http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE`](http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE)`{?a%20a%20sd:IntPS%20.%20OPTIONAL{?a%20sd:hasDimension%20?dim}%20.%20?a%20sd:hasDegree%20?deg%20.%20?a%20sd:hasLengthsList%20?ll} Run this query]`

Now suppose we want to work with precisely the polynomial system that are missing a dimension. Here we could filter the result:

`PREFIX sd: `<http://symbolicdata.org/Data/Model/>
`SELECT ?a ?dim ?deg ?ll WHERE {`
`  ?a a sd:IntPS .`
`  OPTIONAL {?a sd:hasDimension ?dim} .`
`  ?a sd:hasDegree ?deg .`
`  ?a sd:hasLengthsList ?ll .`
`  FILTER(!BOUND(?dim))`
`}`
`[`[`http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE`](http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?a%20?dim%20?deg%20?ll%20WHERE)`{?a%20a%20sd:IntPS%20.%20OPTIONAL{?a%20sd:hasDimension%20?dim}%20.%20?a%20sd:hasDegree%20?deg%20.%20?a%20sd:hasLengthsList%20?ll%20.%20FILTER(!BOUND(?dim))} Run this query]`

If we want not just degree 20 but a degree within a certain range, it is useful to introduce a variable ?d for the degree and include another condition for the variable ?d.

`PREFIX sd: `<http://symbolicdata.org/Data/Model/>
`SELECT ?s ?d WHERE {`
`  ?s a sd:IntPS .`
`  ?s sd:hasDegree ?d .`
`  FILTER(xsd:integer(?d) <= 20)`
`}`
`[`[`http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?s%20?d%20WHERE`](http://symbolicdata.org/sparql/sparql.php?output=htmltab&query=PREFIX%20sd:%20%3Chttp://symbolicdata.org/Data/Model/%3E%20SELECT%20?s%20?d%20WHERE)`{?s%20a%20sd:IntPS%20.%20?s%20sd:hasDegree%20?d%20.%20FILTER(xsd:integer(?d)%20%3C=%2020)} Run this query]`
