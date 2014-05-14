---
layout: default
title: Using.Ontowiki
---

### Using a Virtuoso based OntoWiki

#### Goal of this page

**Security warning:** In the current default installation (as of 2013-11-09, present also in 2014-03-01) the preconfigured *Admin* account has no password set and the *Anonymous* account has write access to all ontologies. This should be changed for an non local OntoWiki installation.

-   We recommend to create another user account with admin privileges (i.e. declare it as member of the AdminGroup) and remove the original Admin account.

#### Prerequisites

We assume you have a Virtuoso database running on your localhost, can access the Virtuoso console, usually with the command

  
isql-vt <port> <user|default dba> <password>

and have an instance of Ontowiki rolled out within your webserver running at localhost.

#### FAQ

**Q:** There is a knowledge base (graph) <URI> loaded into Virtuoso but not yet visible in OntoWiki.

**A:** Issue on Virtuoso console the command

  
sparql create silent graph <URI> ;

* * * * *

**Q:** The upload of a knowledge base fails with "no curl\_init() found".

**A:** Log in as admin and switch off the Pingback Server Plugin (under Extras \> Configure Extensions). This also speeds up the upload process. Pingback is used to broadcast change notifications to interested parties.
