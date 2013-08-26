---
layout: default
title: PolynomialSystems.Sage
---

Polynomial Systems and Sage
---------------------------

### Prerequisites

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
