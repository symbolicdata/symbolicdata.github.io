---
layout: default
title: Xodx
---

### Xodx - how to be configured

The accompanying information about installation Xodx is quite sparse. Here we collect links and report about additional experience and hints installing and running Xodx.

Sources and first info:

-   <https://github.com/white-gecko/xodx>

Places running Xodx nodes:

-   <http://symbolicdata.org/xodx>
-   <http://www.leipzig-data.de/xodx/>
-   <http://pcai042.informatik.uni-leipzig.de/~swp14-xodx/xodx>
-   <http://pcai042.informatik.uni-leipzig.de/~swp14-sf/xodx>

#### Installation

Short summary from <https://github.com/white-gecko/xodx>

Xodx is a PHP application (requires PHP 5.3.7 or later) best to be run within Apache and Virtuoso backend (see [LocalSparqlEndpoint](LocalSparqlEndpoint "wikilink") how to install all that). Requires PHP-modules php-odbc and php-curl to be installed.

-   Copy *config.ini-dist* to *config.ini* and adjust the DB connection and the model name.
-   To import the initial base ontology for Erfurt you have to allow virtuoso to read the xodx directory (add the dir to the *DirsAllowed* values in your *virtuoso.ini*).
-   Run *make submodules* to clone Erfurt, lib-dssn-php and Saft.
-   Run *make zend* to install the Zend framework
-   Run *make resources* to install the javascript libraries

#### Caveats

-   If logged in into swp14-sf/xodx and calling swp14-xodx/xodx it reports me to be logged in also there, but it doesn't work (of course?)
-   If debuglog messages are shown, run 'touch xodx.log' in the root dir and chmod to write access for the web server.
-   If message "'./cache/' dir is missing", create it and chmod to write access for the web server.

