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

We do not use the default directory /usr/local/var/lib/virtuoso/db/ but a directory /home/services/virtuoso under the non root account 'services' to operate the different databases. In the standard settings each Virtuoso database resides in its own subdirectory of /home/services/virtuoso and communicates over two ports - the DBPort (standard 1111) and the HTTPPort (standard 8890). Copy /usr/local/var/lib/virtuoso/db/virtuoso.ini to /home/services/virtuoso/virtuoso.ini.sample and

`DatabaseFile\t\t\t= virtuoso.db`
`ErrorLogFile\t\t\t= virtuoso.log`
`LockFile\t\t\t= virtuoso.lck `
`TransactionFile\t\t= virtuoso.trx`
`xa_persistent_file\t\t= virtuoso.pxa`
`DatabaseFile\t\t\t= virtuoso-temp.db`
`TransactionFile\t\t= virtuoso-temp.trx`

To create a new database, create a new subdirectory, copy the virtuoso.ini file to it, adapt it to the special needs and start the isql-v console. This will create all necessary files
