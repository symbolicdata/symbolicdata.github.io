---
layout: default
title: PolynomialSystems.Sage
---

Polynomial Systems and Sage
---------------------------

### Prerequisites

Sage obviously is needed, it can be obtained here: <http://www.sagemath.org/> Once downloaded and unzipped, with will be located in a folder \$SAGE\_ROOT. Sage comes with its own Python version. Scripts using the Sage libraries can be run with

`./sage -python script.py`

Another possibility is to install all the Sage modules into your running Python instance. We will not discuss this further here.

Additionally to Sage, the **requests** library is needed, as this library is not installed by default and has to be installed for the Sage Python.

##### Installing new packages into Sage Python

Installing new packaged can easily be done by installing pip. This can be done by invoking a Sage sub-shell:

`./sage -sh`

Next, install pip for Sage Python:

**`(sage-sh)`**` easy_install pip`

In the message that follows, there should be something like "Installing pip script to \$SAGE\_ROOT/local/bin". New libraries can now be installed with pip. However, calling simply pip from the Sage sub-shell might not work (the 'normal' pip was called, not the Sage pip). In this case pip can be called by prefixing the correct path:

**`(sage-sh)`**` $SAGE_ROOT/local/bin/pip install requests`

The Sage sub-shell can be exited by typing 'exit'.

### Usage

To use the sdsage.py module, it has to be imported into the running python instance of Sage:

**`sage:`**` import sdsage`

The module has to be initialized by the command

**`sage:`**` sd = sdsage.SymbolicData()`

which will parse the configuration file (sdsage.ini) and set-up variables. It is possible to use different SPARQL end-points by passing a keyword to the constructor:

**`sage:`**` sd = sdsage.SymbolicData('local')`

Keywords are defined in the SPARQL section of the sdsage.ini file:

`[sparql]`
`symbolicdata.org = `[`http://symbolicdata.org:8890/sparql`](http://symbolicdata.org:8890/sparql)
`local = `[`http://localhost:8890/sparql`](http://localhost:8890/sparql)

By default, the SPARQL endpoint from symbolicdata.org will be used. Note that the local SPARQL endpoint will not be available unless you install a triple store on your own machine.

The SymbolicData object we created above has several methods:

-   **list\_ideals()** displays all available ideal names on screen
-   **get\_ideals()** returns a list of ideal names that can be used in a script
-   **get\_ideal(<name>)** returns a Sage ideal objects which can be used like any other Sage ideal
-   **get\_sd\_ideal(<name>)** returns an SD\_Ideal object that represents the SymbolicData database object for this ideal

The parameter <name> is a string that either can be a complete URI like <http://symbolicdata.org/Data/Ideal/Buchberger-87.Homog> or just 'Buchberger-87.Homog'. The SD\_Ideal object will be discussed in greater detail in the next section. We end this section with a longer usage example:

**`sage:`**` import sdsage`
**`sage:`**` sd = sdsage.SymbolicData()`
**`sage:`**` sd.list_ideals()`
`Curves.curve15_20.Generators              Buchberger-87.Homog`
`Butcher                                   Cassou`
`Cohn_2.Homog                              Curves.curve10_20.Generators`
*<more lines here>*
**`sage:`**` bb87h = sd.get_ideal('Buchberger-87.Homog')`
**`sage:`**` bb87h`
`Ideal (-r*t + x*hv, -r^2 + z*hv, -r*t^2 + y*hv^2) of Multivariate Polynomial Ring in r, t, x, y, z, hv over Integer Ring`
**`sage:`**` bb87h.groeber_basis()`
`[t^2*z*hv - r*y*hv^2, x^2*hv^2 - r*y*hv^2, r*x*hv - t*z*hv, t*x*hv - y*hv^2, r^2 - z*hv, r*t - x*hv]`
**`sage:`**` sd_bb87h = sd.get_sd_ideal('Buchberger-87.Homog')`
**`sage:`**` sd_bb887`
<sdsage.SD_Ideal instance at 0xc88902c>

### The SD\_Ideal object

SD\_Ideal objects represent a SymbolicData database object. The constructor takes a string which either is a complete URI or a simple name (the latter of which will be prefixed with the 'ideal' value from the sdsage.ini)

Any triple of the form (SUBJ, PRED, OBJ) will yield a field PRED\* for the SD\_Ideal object with the value OBJ, where PRED\* is the ending piece of PRED , i.e. everything before and including the last / or \# is thrown away.

Take for example Buchberger-87, the TTL for this Ideal looks like this:

<http://symbolicdata.org/Data/Ideal/Buchberger-87>
`    rdf:type sd:Ideal ;`
`    sd:createdAt "1999-03-26" ;`
`    sd:createdBy sdp:Graebe_HG ;`
`    sd:hasDegreeList "2,2,3" ;`
`    sd:hasDimension "2" ;`
`    sd:hasLengthsList "2,2,2" ;`
`    sd:hasVariables "r,t,x,y,z" ;`
`    sd:relatedPolynomialSystem `<http://symbolicdata.org/Data/IntPS/Buchberger-87>` ;`
`    rdfs:comment "Origin: Implicitation of (r*t,r*t^2,r^2)" .`

Once loaded by

**`sage:`**` sd_bb87 = sd.get_sd_ideal('Buchberger-87')`

these value can be accessed as follows:

**`sage:`**` sd_bb87.createdAt`
`u'1999-03-26'`
**`sage:`**` sd_bb87.createdBy`
`u'`[`http://symbolicdata.org/Data/Person/Graebe_HG`](http://symbolicdata.org/Data/Person/Graebe_HG)`'`
**`sage:`**` sd_bb87.type`
`u'`[`http://symbolicdata.org/Data/Model#Ideal`](http://symbolicdata.org/Data/Model#Ideal)`'`
**`sage:`**` sd_bb87.hasLengthsList`
`u'2,2,2'`
**`sage:`**` sd_bb87.relatedPolynomialSystem`
`u'`[`http://symbolicdata.org/Data/IntPS/Buchberger-87`](http://symbolicdata.org/Data/IntPS/Buchberger-87)`' ;`

Two things are to be noted:

-   The returned value always is a unicode string, which is shown by the u before the first quote.
-   The returned value can also be a full URI that points to other resources. To further investigate resources that do not belown to the class sd:Ideal, other tools like the OntoWiki have to be used.

Another important thing is, that the integer polynomial system <http://symbolicdata.org/Data/IntPS/Buchberger-87> is referenced. This is not always the case. We will discuss this in greater detail in the next section.
