---
layout: default
title: History
---

### A Short History of the SymbolicData Project

#### About the roots

The SymbolicData project grew out of the [special session on Benchmarking](http://krum.rz.uni-mannheim.de/cafgbench.html) at the 1998 ISSAC conference in Rostock which was organized by Heinz Kredel. Since then, the project has steadily developed from ideas to implementations and data collections and back.

In 1999, the project joint forces with the symbolic computation groups of the University of Paris VI (Jean-Charles Faugere, Daniel Lazard), of Ecole Polytechnique (Joel Marchand, Marc Giusti), and of the University of Saarbrücken (Michael Dengel, Wolfram Decker). Furthermore, the project was incooperated into the benchmarking activities of the ["Fachgruppe Computeralgebra"](http://www.fachgruppe-computeralgebra.de) of the Deutsche Mathematiker Vereinigung (Chair at those times: Gerd-Martin Greuel).

#### SymbolicData Version 1

A **first version** of SymbolicData (SD-1) grew up from efforts in the end of the 1990th. It used modern at that time markup techniques for data (the sd format) and developed a bunch of Perl based tools to transform data from that format for different benchmark tasks. XML as a single eXtensible Markup Language was not yet in common use as today. Most of the data were collected **during the years 1999-2003**. After that time there was not enough manpower to advance the project. The work of that time is available as [tar ball](http://symbolicdata.org/Uploads/SD-1.tgz).

The main design decisions and implementations of **this first prototype** were realized by Olaf Bachmann and Hans-Gert Gräbe during two visits in Leipzig and Kaiserslautern in 1999 and 2000. The data was stored in a flat XML-like syntax and managed with elaborated Perl tools. Meta information about data was stored in the same format in a special META directory and allowed for a unique and flexible handling of all the data.

We collected data from Polynomial System Solving and Geometry Theorem Proving, set up a CVS repository, and started test computations, both at [UMS Medicis](http://www.medicis.polytechnique.fr), with the main focus on [Polynomial System Solving](PolynomialSystems "wikilink"). The prototype was presented at the Meeting of the Fachgruppe Computeralgebra, Kaiserslautern, February 2000.

Olaf Bachmann left the project for a new job at the end of 2000. Now the main focus moved to Geometry Theorem Proving. Malte Witte (at those times a bachelor student at the Univ. Leipzig) digitized a great part of the 512 geometry theorems considered in [Chou 88] and prepared them for benchmark computations with the [GeoProver package](https://github.com/hg-graebe/GeoProver) of Hans-Gert Gräbe.

#### SymbolicData Version 2

With the [raise of XML](http://en.wikipedia.org/wiki/XML), in particular after 2004, we decided to give up the special sd format in favour of XML and to develop a **second version** of SymbolicData (SD-2) translating the data to XML. The Perl based tools were outdated and no one was interested to rewrite these tools, since there are plenty of XML tools around in all scripting languages. For the part of tools we concentrated in the following on collecting best practice scripting examples from the contributors. In parallel we tried to involve more people. In particular, the German "Fachgruppe Computerlagebra" adopted the project as their own and sponsors the web domain since those times. During and after the [Special Semester on Groebner Bases](http://www.ricam.oeaw.ac.at/specsem/srs/groeb/index.htm) in March 2006 we tried a relaunch of the project, but with limited success. Nevertheless most of the data were transformed to XML and XSchema standards **during the years 2003-2007**. The work of that time is available as [tar ball](http://symbolicdata.org/Uploads/SD-2.tgz).  Also the [archive of the mailing list](http://symbolicdata.org/Uploads/old-archive.txt) is available, that we operated since 2003.

The project was presented in talks at RWCA-02, ADG-02 and also in the CA-Rundbrief published by the Fachgruppe Computeralgebra. The main efforts in those times were spent on a further development of concepts. First, the strong development and standardization of XML as markup language suggested to move the format of data storage to a truly XML-based design and have the META information encoded as XSchema. Second, with the raise of the Semantic Web new concepts of ontology design came into the focus of SymbolicData. They allow for a much more flexible handling of relational information compared to the the former concept based on META information or XSchema (and are also superior to database concepts).

Since 2005 the Web site `SymbolicData.org` was hosted by the GI office in Bonn on behalf of the Fachgruppe Computeralgebra. During the [Special Semester on Groebner Bases](http://www.ricam.oeaw.ac.at/specsem/srs/groeb/index.htm) in March 2006 we tried a relaunch of the project joining forces with the [GB-Bibliography project](http://www.ricam.oeaw.ac.at/Groebner-Bases-Bibliography/index.php) (Bruno Buchberger, Alexander Zapletal) and the GB-Facilities project (Viktor Levandovskyy). But all that was another flash in the pan and the short "rainy season" was followed by another long lasting dry one with only minor activities to keep the data available online.

#### SymbolicData Version 3

After 2006 we took efforts to refactor the data along standard Semantic Web concepts, started to operate the [Google symbolicdata mailing list](https://groups.google.com/forum/#!forum/symbolicdata) and moved the repo from CVS first to a bitbucket hosted mercurial repo and later on to our [github account](https://github.com/symbolicdata). 

Within the [Saxonian E-Science Initiative](http://www.escience-sachsen.de) Hans-Gert Gräbe successfully applied for a Project "Benchmarking im Symbolischen Rechnen im Web 3.0.", that started in Sept 2012 for 12 months and aimed at soliciting the developments of the last years. The main work was done by Andreas Nareike (at those times with a position in the project team) and Hans-Gert Gräbe.

As a first decision, mainly forced by Ralf Hemmecke, at the end of 2012 we switched to a git repo, later on transformed that to a [github organizational account](https://github.com/symbolicdata) and set up a rudimentary quality assurance process.
