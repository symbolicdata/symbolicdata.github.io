---
layout: default
title: Backups
---

### The SymbolicData Backup Strategy

#### git Repo

Due to the philosophy of a Distributed VCS as git no measures for backup are required. You may clone immediately the [public repo at github](https://github.com/symbolicdata).

#### Data

We provide regular backups of the Data on two lines - a [weekly dump](http://symbolicdata.org/Backups/RDFDataDump) of the Data in the Virtuoso database and [monthly dumps](http://symbolicdata.org/Backups/Data) of the latest development versions of the RDFData and XMLResources parts as maintained by the SD project group (note that due to our [Git development process](Using.Git "wikilink") those data may not live on the master repo).

You can extract Data also directly from our [Ontowiki](http://symbolicdata.org/Data/) or via the [Sparql Endpoint](http://symbolicdata.org:8890/sparql).

#### SymbolicData Wiki XML-Dump

We provide [XML Dumps](http://symbolicdata.org/Backups/Wiki) of our Wiki, that are monthly created with the command 'maintenatce/dumpBackup.php --current'. They can be analyzed with XML tools and also imported into another Mediawiki with the 'importDump.php' command. For details see <http://www.mediawiki.org/wiki/Manual:Backing_up_a_wiki> (XML dumps)
