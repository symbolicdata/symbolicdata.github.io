---
layout: default
title: LocalSparqlEndpoint
---

On this page we describe how to set up your own SPARQL endpoint at <http://localhost:8890/sparql> based on Apache (requires mod\_rewrite) running under a recent Linux Debian Ubuntu distribution.

-   Tried with Debian GNU/Linux 7.0, Ubuntu 12.04.2 LTS, and Apache/2.2.22 (Debian)

### Preliminary Remarks

There are plenty of RDF stores based on MySQL databases. Much of them are well suited for serving SymbolicData Data (we successfully used an [arc2 based store](https://github.com/semsol/arc2/wiki)).

Here we describe how we installed an RDF infrastructure based on the more powerful RDF Engine [Virtuoso](http://virtuoso.openlinksw.com) and (optional) the RDF Editor Tool [Ontowiki](http://aksw.org/Projects/OntoWiki.html).

-   Virtuoso is a commercial Database store of *Openlink Software* specially designed to serve huge RDF data that comes with a built in Sparql endpoint. There is a Virtuoso Open Source Distribution (VOS) and even one that is bundled with Debian Ubuntu. We decided to use the latest VOS and to "install it from generic source".
-   Ontowiki is a performant Open Source RDF Editing Tool developed by the ASWK group at the University of Leipzig. It can directly be installed from the Ontowiki git Repo and easily configured to run with Virtuoso.

### Install the Virtuoso engine

We describe the main steps to install the latest VOS distribution "from generic source" (do not install as Ubuntu package!). For details see <http://virtuoso.openlinksw.com/dataspace/doc/dav/wiki/Main/VOSUbuntuNotes>.

-   (Once) Install additional Ubuntu packages to compile the VOS sources - requires root privileges.
-   Download the sources (recent VOS 6.1.6) from sourceforge as tgz file, unpack and build them in a local directory
-   Install the build (requires root privileges). In the (recommended) standard settings the binaries (inifile, isql-v, isql-vw, virt\_mall, virtuoso-t) are deployed to /usr/local/bin, various libraries (virto\*, jdbc-\*, hibernate, sesame) to /usr/local/lib and the following directories are created:
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

Adapt at least the items ServerPort in the Parameters section (default 1111), the ServerPort in the HTTPSection (default 8890) and the DirsAllowed. **Different databases have to use different ports.**

**DirsAllowed** contains a comma separated list of all directories where the service is allowed to read files. A file location in any subdirectory of the listed directories will be accepted. It is recommended to use absolute path names without file symlinks.

Prepare a start skript with the two lines

` cd /home/services/virtuoso/(thedirectory)`
` virtuoso-t +configfile virtuoso.ini `

and start the service. Open the console

`isql-v `<DBServerPort>` dba `<passwd>

and change the password (standard user = dba, passwd = dba)

`set password `<old password>` `<new password>`;`

Load data from ttl files to the store, e.g., the SymbolicData Peoples knowledge base

`DB.DBA.TTLP_MT (file_to_string_output ('/Path/to/RDFData/People.ttl'), '`[`http://symbolicdata.org/Data/People/`](http://symbolicdata.org/Data/People/)`');`

The first parameter is the path to the file, the second parameter the ontology name. Note that data can be managed also via the Ontowiki attached to that Virtuoso service.

Test if the data are loaded correctly by a sparql query at console

` sparql select distinct ?p from `<http://symbolicdata.org/Data/People/>` where {?s ?p ?o};`

Leave the console.

For curious people: Direct your Browser to <http://localhost:8890>. It will show you the Virtuoso VSP pages with a "phpmyadmin" like administration web frontend at <http://localhost:8890/conductor>. Not required for beginners.

Direct your Browser to <http://localhost:8890/sparql>. This opens a "Virtuoso SPARQL Query Editor". Try the query

`select distinct ?s from `<http://symbolicdata.org/Data/People/>` where {?s ?p ?o}`

It should list the URIs of all people stored in the SD People knowledge base.

You can shutdown the service from the console with

` shutdown();`

To enable the database service to interoperate with applications as Ontowiki it has to be registered with ODBC. Add a section

` # Symbolicdata OntoWiki dsn start`
` [SDOW]`
` Description=Symbolicdata OntoWiki Virtuoso DSN`
` Driver=/usr/local/lib/virtodbc.so`
` Address=localhost:1111`
` # Symbolicdata OntoWiki dsn end`

with a unique section name [SDOW] and the DBPort to the /etc/odbc.ini file.

### Install Ontowiki (Optional)

Ontowiki is a pure PHP application, that runs completely within the apache web server and can be configured by various plugins. We recommend to deploy one Ontowiki instance per application.

We describe the main steps to deploy Ontowiki. See <https://github.com/AKSW/OntoWiki/wiki/GetOntowikiUsers> for details.

-   Clone Ontowiki from the github repo to the target directory

` git clone `[`https://github.com/AKSW/OntoWiki.git`](https://github.com/AKSW/OntoWiki.git)

-   Change to that directory and load the additional libraries Erfurt, RDFAuthor and Zend

` make deploy`

-   Copy config.ini.sample to config.ini and adapt it. Note that values in config.ini overwrite standard settings in various other ini files.
    -   store.virtuoso.dsn - Put here the section head of the Virtuoso store from odbc.ini (without quotes)
    -   store.virtuoso.user - The Virtuoso store user (default dba)
    -   store.virtuoso.password - Password of the Virtuoso store
-   Link the directory to a directory /WebDir that is delivered by the web server.
-   Direct your browser to <http://localhost/WebDir>
    -   Test if (http://localhost/WebDir/config.ini is delivered. It shouldn't, sinde this is forbidded by the .htaccess file in /WebDir, that was pulled from the repo. Note that functioning mod\_rewrite and the content of .htaccess are essential for Ontowiki since they provide all the URI rewrite magics required in the Linked Data standards.
    -   Now you can login as Superadmin with login/passwd of the Virtuoso, configure users and user rights and manage rdf data files via OntoWiki.

