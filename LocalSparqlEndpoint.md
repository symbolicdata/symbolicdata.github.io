---
layout: default
title: LocalSparqlEndpoint
---

### Goal of this page

To operate SymbolicData on a local site requires access to the data via a web server at localhost and a Sparql endpoint.

On this page we describe how to set up your own Sparql endpoint at <http://localhost:8890/sparql> based on Apache running under a recent Linux Debian Ubuntu distribution.

-   Tried with Debian GNU/Linux 7.0, Ubuntu 12.04.2 LTS, and Apache/2.2.22 (Debian)

### Preliminary Remarks

There are plenty of RDF stores based on MySQL databases. Much of them are well suited for serving SymbolicData Data, too (we successfully used an [arc2 based store](https://github.com/semsol/arc2/wiki)).

Here we describe how to install an RDF infrastructure based on the more powerful RDF Engine [Virtuoso](http://virtuoso.openlinksw.com) and (optional) the RDF Editor Tool [Ontowiki](http://aksw.org/Projects/OntoWiki.html).

-   Virtuoso is a commercial Database store of *Openlink Software* specially designed to serve huge RDF data that comes with a built in Sparql endpoint. We recommend to use the Virtuoso Open Source Distribution (VOS) bundled with Debian.
-   Ontowiki is a performant Open Source RDF Editing Tool developed by the ASWK group at Leipzig University. It can directly be installed from the Ontowiki git Repo and easily configured to run with Virtuoso.

It may be necessary to **adjust the apache settings** in etc/php5/apache2/php.ini to be able to upload large knowledge bases:

<pre>
   post_max_size = 128M
   short_open_tag = off
   memory_limit = 1280M
   upload_max_filesize = 128M
</pre>

  
Caveat: In any case it is a good advice to upload larger RDF graphs via the Virtuoso console (as described below).

Moreover, mod\_rewrite has to be activated since OntoWiki heavily uses URI Rewriting to comply with the Linked Open Data Standards.

### Install the Virtuoso engine

The virtuoso engine can easily be installed with the single command

<pre>
  sudo aptitude install virtuoso-opensource
</pre>

For security reasons during installation you will be asked for a password for the db users 'dba' and 'dav' (default: dba). The password should match the regex [a-zA-Z0-9]+, i.e., have only letters and ciphers.

For details see <http://virtuoso.openlinksw.com/dataspace/doc/dav/wiki/Main/VOSUbuntuNotes>

The executables provided (in the virtuoso-opensource-6.1-bin package) are:

-   /usr/bin/isql-vt -- command-line database-access tool, iSQL
-   /usr/bin/isqlw-vt -- Unicode-enabled iSQL
-   /usr/bin/virt\_mail -- SMTP delivery agent for incoming mail
-   /usr/bin/virtuoso-t -- Main daemon executable

At server start time a Virtuoso database is started with configuration read from /etc/virtuoso-opensource-6.1/virtuoso.ini. The default settings point to

-   /var/lib/virtuoso-opensource-6.1/db/ as the directory where all data and logging information resides
-   the DB server port 1111 to be used by the console command

<pre>
  isql-vt 1111 dba YourDBPassword
</pre>

if the daemon is running.

-   the HTTP server port 8890 to be used as <http://localhost:8890> - it allows to manage the database via the conductor, a web interface similar to phpmyadmin or so - and the Sparql endpoint at <http://localhost:8890/sparql>.

### (Optional) Create a new Virtuoso Database and start operation

Copy /etc/virtuoso-opensource-6.1/virtuoso.ini to a fresh directory /myPATH/myNewVDir, change all file names to local ones

<pre>
  DatabaseFile                   = virtuoso.db
  ErrorLogFile                   = virtuoso.log
  LockFile                       = virtuoso.lck 
  TransactionFile                = virtuoso.trx
  xa_persistent_file             = virtuoso.pxa
  DatabaseFile                   = virtuoso-temp.db
  TransactionFile                = virtuoso-temp.trx
</pre>

change the ports 1111 (new, e.g. 1112) and 8890 (new, e.g. 8891) to different ones and start a new daemon with

<pre>
  cd /myPATH/myNewVDir; virtuoso-t +configfile virtuoso.ini 
</pre>

This will generate all additional files in that directory and start the daemon. Access the database via console

<pre>
  isql-vt 1112 dba dba
</pre>

and first change the default password 'dba'

<pre>
  SQL> set password dba YourVerySecretPassword ;
</pre>

The web front end to the new database will be available at <http://localhost:8891>.

Shut down the service from the console with

<pre>
  isql-vt 1112 dba YourVerySecretPassword
  SQL> shutdown() ;
</pre>

### (Optional) Install Ontowiki

[Ontowiki](OntoWiki "wikilink") is a pure PHP application, that runs completely within the apache web server and can be configured by various plugins.

Ontowiki requires apache with php5 support. To operate with Virtuoso the php5-odbc extension has to be installed.

<pre>
  sudo apt-get install php5-odbc php5 libapache2-mod-php5
</pre>

  
hgg, 2014-01-09: We get reported for ubuntu 13.10, that 'php-json' is put (by legal restrictions) into a separate package and is required to be installed additionally.

The database service has to be be registered with ODBC. Add a section

<pre>
   # SymbolicData OntoWiki dsn start
   [SDOW]
   Description=SymbolicData OntoWiki Virtuoso DSN
   Driver=/usr/lib/odbc/virtodbc.so
   Address=localhost:1111
   # SymbolicData OntoWiki dsn end
</pre>

with a unique section name [SDOW] and the DBPort to the /etc/odbc.ini file.

  
hgg, 2013-07-22: I had a problem if the the port is not 1111, OntoWiki was installed under the default port instead of the port given here.

To run Ontowiki requires Apache with php5 and mod\_rewrite enabled. A typical configuration in apache2/sites-enabled looks as follows:

<pre>
   DocumentRoot /home/web/public_html
   <Directory /home/web/public_html/>
     Options Indexes FollowSymLinks MultiViews
     AllowOverride All 
     Order allow,deny
     Allow from all
   </Directory>
</pre>

We recommend to deploy one Ontowiki instance per application.

We describe the main steps to deploy Ontowiki. See <https://github.com/AKSW/OntoWiki/wiki/GetOntowikiUsers> for details.

-   Clone Ontowiki from the github repo to the target directory

<pre>
   git clone https://github.com/AKSW/OntoWiki.git
</pre>

-   Change to that directory and load the additional libraries Erfurt, RDFAuthor and Zend

<pre>
   make deploy
</pre>

-   Copy config.ini.sample to config.ini and adapt it. Note that values in config.ini overwrite standard settings in various other ini files.
    -   store.virtuoso.dsn - Put here the section head of the Virtuoso store from odbc.ini (without quotes)
    -   store.virtuoso.user - The Virtuoso store user (default dba)
    -   store.virtuoso.password - Password of the Virtuoso store
-   Link the directory to a directory /WebDir that is delivered by the web server.
-   Direct your browser to <http://localhost/WebDir>
    -   Test if <http://localhost/WebDir/config.ini> is delivered. It shouldn't, sinde this is forbidded by the .htaccess file in /WebDir, that was pulled from the repo. Note that functioning mod\_rewrite and the content of .htaccess are essential for Ontowiki since they provide all the URI rewrite magics required in the Linked Data standards.
    -   Now you can login as Superadmin with login/passwd of the Virtuoso, configure users and user rights and manage rdf data files via OntoWiki.

**Security warning:** In the current default installation (as of 2013-11-09, present also in 2014-03-01) the preconfigured *Admin* account has no password set and the *Anonymous* account has write access to all ontologies. This should be changed for an non local OntoWiki installation.

### Data Management

To load SD data from the files supplied with the git repo directly into the Virtuoso engine the following steps are required:

1) Check out the repo to /YourPathTo/symbolicdata, add the path /YourPathTo/symbolicdata to the data part of the distribution to the DirsAllowed

<pre>
  DirsAllowed =., /usr/share/virtuoso-opensource-6.1/vad, /YourPathTo/symbolicdata
</pre>

and restart the daemon. 

2) Load all turtle graphs into the Virtuoso Engine. The perl script at src/vsql/loaddata.pl writes the required output to stdout, that contains a number of records like

<pre>
   sparql create silent graph <http://symbolicdata.org/Data/People/> ; 
   DB.DBA.TTLP_MT (file_to_string_output('/YourPathTo/symbolicdata/data/RDFData/People.ttl'),'[http://symbolicdata.org/Data/People/](http://symbolicdata.org/Data/People/)'); 
</pre>

Read that into Virtuoso using the command line tool isql-vt:

<pre>
   perl loaddata.pl | isql-vt 1111 dba YourVerySecretPassword
</pre>

3) Check success from within the console

<pre>
   isql-vt 1111 dba YourVerySecretPassword
   SQL> sparql select distinct ?s from <http://symbolicdata.org/Data/People/> where {?s ?p ?o};
</pre>

and similar for the other graphs 'Bibliography', 'PolynomialSystems', 'Systems' etc. The command will list you the URIs of all instances in the given graph. Try the same at the Sparql endpoint <http://localhost:8890/sparql> with

<pre>
   select distinct ?s from <http://symbolicdata.org/Data/People/> where {?s ?p ?o}
</pre>

It should list the URIs of all people stored in the SD People knowledge base. Compare your output with that from <http://symbolicdata.org:8890/sparql>

### Additional remarks about Virtuoso

#### More on config.ini

Adapt at least the items ServerPort in the Parameters section (default 1111), the ServerPort in the HTTPSection (default 8890) and the DirsAllowed. **Different databases have to use different ports.**

**DirsAllowed** contains a comma separated list of all directories where the service is allowed to read files. A file location in any subdirectory of the listed directories will be accepted. It is recommended to use absolute path names without file symlinks.

#### Change the Password

Open the console

<pre>
  isql-v &lt;DBServerPort> dba &lt;passwd>
</pre>

and change the password (standard user = dba, passwd = dba)

<pre>
  SQL>  set password &lt;old password> &lt;new password>;
</pre>

For curious people: Direct your Browser to <http://localhost:8890>. It will show you the Virtuoso VSP pages with a "phpmyadmin" like administration web frontend at <http://localhost:8890/conductor>. Not required for beginners.

#### Some useful commands

Shutdown the service from the console with

<pre>
   SQL> shutdown() ;
</pre>

Clear Data from a given graph:

<pre>
   SQL> sparql clear graph <http://symbolicdata.org/Data/Annotations/> ; 
</pre>

Graphs are not created automatically. If you have problems to display content in Ontowiki, a command as the following may help to resolve the trouble

<pre>
   SQL> sparql create silent graph <http://symbolicdata.org/Data/Bibliography/> ;
</pre>
