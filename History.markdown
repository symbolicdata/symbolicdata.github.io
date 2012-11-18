---
layout: default
title: History
---

### A Short History of the SymbolicData Project

The SymbolicData project grew out of the [special session on Benchmarking](http://krum.rz.uni-mannheim.de/cafgbench.html) at the 1998 ISSAC conference in Rostock which was organized by H. Kredel. Since then, the project has steadily developed from ideas to implementations and data collections and back.

In 1999, the project joint forces with the symbolic computation groups of the University of Paris VI (J. C. Faugere, D. Lazard), of Ecole Polytechnique (J. Marchand, M. Giusti), and of the University of Saarbrücken (M. Dengel, W. Decker). Furthermore, the project was incooperated into the benchmarking activities of the ["Fachgruppe Computeralgebra"](http://www.fachgruppe-computeralgebra.de) of the Deutsche Mathematiker Vereinigung (Chair at those times: G.-M. Greuel).

The main design decisions and implementations of the first prototype were realized by O. Bachmann and H.-G. Gräbe during two visits in Leipzig and Kaiserslautern in 1999 and 2000. The data was stored in a flat XML-like syntax and managed with elaborated Perl tools. Meta information about data was stored in the same format in a special META directory and allowed for a unique and flexible handling of all the data.

We collected data from Polynomial System Solving and Geometry Theorem Proving, set up a CVS repository, and started test computations, both at [UMS Medicis](http://www.medicis.polytechnique.fr), with the main focus on [Polynomial System Solving](PolynomialSystems "wikilink"). The prototype was presented at the Meeting of the Fachgruppe Computeralgebra, Kaiserslautern, February 2000.

O. Bachmann left the project for a new job at the end of 2000. Now the main focus moved to Geometry Theorem Proving. M. Witte (Leipzig) digitized a great part of the 512 geometry theorems considered in [Chou 88] and prepared them for benchmark computations with the GeoProver package of H.-G. Gräbe.

The project was presented in talks at RWCA-02, ADG-02 and also in the CA-Rundbrief published by the Fachgruppe Computeralgebra. But there was not enough interest to really push the project during 2002-2005. The main efforts in those times were spent on a further development of concepts. First, the strong development and standardization of XML as markup language suggested to move the format of data storage to a truly XML-based design and have the META information encoded as XSchema. Second, with the raise of the Semantic Web new concepts of ontology design came into the focus of SymbolicData. They allow for a much more flexible handling of relational information compared to the the former concept based on META information or XSchema (and are also superior to database concepts).

Since 2005 the Web site www.SymbolicData.org is hosted by the GI office in Bonn on behalf of the Fachgruppe Computeralgebra. During the [Special Semester on Groebner Bases](http://www.ricam.oeaw.ac.at/specsem/srs/groeb/index.htm) in March 2006 we tried a relaunch of the project and will unite forces with the [GB-Bibliography project](http://www.ricam.oeaw.ac.at/Groebner-Bases-Bibliography/index.php) (B.Buchberger, A.Zapletal) and the GB-Facilities project (V.Levandovskyi).

After 2006 H.-G. Gräbe took efforts to refactor the data along standard Semantic Web concepts, operated the symbolicdata mailing list and moved the repo from CVS to a bitbucket hosted mercurial repo.

Within the [Saxonian E-Science Initiative](http://www.escience-sachsen.de) H.-G. Gräbe successfully applied for a Project "Benchmarking im Symbolischen Rechnen im Web 3.0.", that started in Sept 2012 for 12 months and aims at soliciting the developments of the last years. The main work will be done by Andreas Nareike.
