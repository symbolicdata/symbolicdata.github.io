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
