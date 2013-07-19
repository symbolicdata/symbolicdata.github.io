---
layout: default
title: LocalSparqlEndpoint
---

On this page we describe how to set up your own SPARQL endpoint at a local server running under a recent Linux Debian Ubuntu distribution.

There are plenty of RDF stores based on MySQL databases. Much of them are well suited for serving SymbolicData Data (we successfully used an [arc2 based store](https://github.com/semsol/arc2/wiki)).

Here we describe how we installed an RDF infrastructure based on the more powerful RDF Engine [Virtuoso](http://virtuoso.openlinksw.com) and the RDF Editor Tool [Ontowiki](http://aksw.org/Projects/OntoWiki.html).

-   Virtuoso is a commercial Database store of *Openlink Software* specially designed to serve huge RDF data that comes with a built in Sparql endpoint. There is a Virtuoso Open Source Distribution (VOS) and even one that is bundled with Debian Ubuntu. We decided to use the latest VOS and to "install it from generic source".
-   Ontowiki is a performant Open Source RDF Editing Tool developed by the ASWK group at the University of Leipzig. It can directly be installed from the Ontowiki git Repo and easily configured to run with Virtuoso.

### Install the Virtuoso engine

We describe the main steps to install the latest VOS distribution "from generic source". For details see <http://virtuoso.openlinksw.com/dataspace/doc/dav/wiki/Main/VOSUbuntuNotes>.

-   (Once) Install additional Ubuntu packages to compile the VOS sources - requires root privileges.
-   Download the sources (recent VOS 6.1.6) from sourceforge as tgz file, unpack and build them in a local directory
-   Install the build (reuires root privileges). In the standard settings the binaries (inifile, isql-v, isql-vw, virt\_mall, virtuoso-t) are deployed to /usr/local/bin, various libraries (virto\*, jdbc-\*, hibernate, sesame) to /usr/local/lib and the following directories are created:
    -   /usr/local/share/virtuoso/vad/ - used to store VAD archives prior to installation in an instance
    -   /usr/local/share/virtuoso/doc/ - local offline documentation
    -   /usr/local/var/lib/virtuoso/db/ - the default location for a Virtuoso instance
    -   /usr/local/var/lib/virtuoso/vsp/ - various VSP scripts which comprise the default homepage until the Conductor is installed
    -   /usr/local/lib/virtuoso/hosting/ - various modules

Note that during installation the ports 1111, 1121 and 1131 are used for tempory databases to create the different VAD files. These ports must not be used by other running Virtuoso (or other) processes. Note that 1111 is the Virtuoso standard port.

### Create a Virtuoso Database

We do not use the default directory /usr/local/var/lib/virtuoso/db/ but a directory /home/services/virtuoso under the non root account 'services' to operate the different databases. In the standard settings each Virtuoso database resides in its own subdirectory of /home/services/virtuoso and communicates over two ports - the DBPort (standard 1111) and the HTTPPort (standard 8890).

Copy /usr/local/var/lib/virtuoso/db/virtuoso.ini to /home/services/virtuoso/virtuoso.ini.sample and change all database related file names to local ones.

`DatabaseFile                   = virtuoso.db`
`ErrorLogFile                   = virtuoso.log`
`LockFile                       = virtuoso.lck `
`TransactionFile                = virtuoso.trx`
`xa_persistent_file             = virtuoso.pxa`
`DatabaseFile                   = virtuoso-temp.db`
`TransactionFile                = virtuoso-temp.trx`

Then all data (ini-file, database files, logging) will be stored in the local directory of the given database. Note that backup is as easy as backing up all these files. To create a new database, create a new subdirectory, copy the virtuoso.ini.sample file to local virtuoso.ini, adapt it to the special needs and start the isql-v console. This will create all other required files.

Adapt at least the items ServerPort in the Parameters section (default 1111), the ServerPort in the HTTPSection (default 8890) and the DirsAllowed. Different databases have to use different ports.

DirsAllowed contains a comma separated list of all directories where the service is allowed to read files. A file location in any subdirectory of the listed directories will be accepted. It is recommended to use absolute path names without file links.

Prepare a start skript with the two lines

` cd /home/services/virtuoso/(thedirectory)`
` virtuoso-t +configfile virtuoso.ini `

and start the service. Open the console

`isql-v `<DBServerPort>` dba `<passwd>

and change the password (standard user = dba, passwd = dba)

`set password `<old password>` `<new password>`;`

Load data from ttl files to the store, e.g., the SymbolicData Peoples knowledge base

`DB.DBA.TTLP_MT (file_to_string_output ('Path/to/RDFData/People.ttl'), '`[`http://symbolicdata.org/Data/People/`](http://symbolicdata.org/Data/People/)`');`

The first parameter is the path to the file, the second parameter the ontology name. Note that data can be managed also via the Ontowiki attached to that Virtuoso service.

Shutdown the service from the console with

` shutdown();`

### Install Ontowiki

Ontowiki ist eine reine PHP-Applikation, die vollständig innerhalb des Apache läuft und damit auch nicht selbst gestartet werden muss. Sie kann, ähnlich wie Wordpress, über eine Vielzahl von Plugins konfiguriert werden.

Ausrollen der Quellen\\\\footnote{Details siehe

` \\url{`[`https://github.com/AKSW/OntoWiki/wiki/GetOntowikiUsers`](https://github.com/AKSW/OntoWiki/wiki/GetOntowikiUsers)`}. }  aus dem`

github Repo in das Zielverezichnis \\\\begin{quote}\\\\tt

` git clone `[`https://github.com/AKSW/OntoWiki.git`](https://github.com/AKSW/OntoWiki.git)

\\\\end{quote} Laden von Erfurt, RDFAuthor und Zend mittels \\\\begin{quote}\\\\tt

` make deploy`

\\\\end{quote} und Anpassen der Datei \\\\texttt{config.ini}. Diese überschreibt die Standardeinstellungen aus anderen ini-Dateien (welche?). \\\\begin{center}

` \\begin{tabular}{|lp{.6\\textwidth}|}\\hline`
`   Parameter & Setting, Anmerkungen \\\\\\hline`
`   \\tt store.virtuoso.dsn &  Section Head des Virtuoso Store aus`
`   \\texttt{odbc.ini} (ohne Quotes)\\\\`
`   \\tt store.virtuoso.user & User des Virtuoso Store (meist dba)\\\\`
`   \\tt store.virtuoso.password & Passwort des Virtuoso Store\\\\`
`   \\tt debug & true, wenn im Debug-Modus \\\\`
`   \\tt cache.query.enable & false, wenn Query Caching problematisch ist\\\\`
`   \\tt session.identifier & wird verwendet, um verschiedene OW-Instanzen zu `
`   unterscheiden \\\\\\hline`
` \\end{tabular}`

\\\\end{center}

Nach erfolgreicher Installation kann man sich als SuperAdmin mit den user/passwd Daten des Virtuoso anmelden. Das ist hart eingebrannt und jenseits aller AC-Mechanismen des Ontowiki.
