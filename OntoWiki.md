---
layout: default
title: OntoWiki
---

### The OntoWiki

**OntoWiki** is a tool providing support for agile, distributed knowledge engineering scenarios. 

It facilitates the visual presentation of a knowledge base as an information map, with different views on instance data. It enables intuitive authoring of semantic content, with an inline editing mode for editing RDF content, similar to WYSIWIG for text documents.

[OntoWiki](http://aksw.org/Projects/OntoWiki.html) is one of the man projects of the [Agile Knowledge Engineering and Semantic Web (AKSW) Group](http://aksw.org).

-  More Information how to [use the OntoWiki](Using.Ontowiki.md "wikilink") within your own projects.

#### The OntoWiki Problem sheet

##### There are several security problems with bot attacks reported

**2014-04-14, Natanael Arndt**

And we hat the same problem with aksw.org two month ago. The 4 steps, Konrad wrote are the same which I think were the reason for the aksw.org data lose. I could see the bot requests in the apache log. ...

To prevent the data loss for now:

-   I've added a robots.txt, which hopefully prevents the bots from calling any delete URLs

` User-agent: *`
` Allow: /*.html$`
` Allow: /*.rdf$`
` Allow: /*.ttl$`
` Disallow: /history/`
` Disallow: /source/`
` Disallow: /model/`
` Disallow: /resource/`

-   Seebi wrote a script which is sitting on the server in a git repository and is called by a cron job.
     This always fetches an RDF/XML- and a Turtle-dump which is then committed to the repository, from where you can clone and fetch it to any other system.

These two actions unfortunately can't tell us, where the problem resides.

**2014-04-14, Konrad Höffner**

We had the same problem with geoknow.eu which comes from a combination of problems:

1.  resources can be deleted by accessing a URI ...
2.  search bots such as the Google Bot recursively follow links
3.  the base configuration grants write access to anyone (because it is a Wiki)
4.  the base model gets lost sometimes, thus resetting the base configuration

Now 1,2,3 and 4 together lead to randomly missing resources, especially those "near" resources visible on the web which are unfortunately those which are most important. On the flip side it leads to fail-fast behaviour which is maybe better than having some script mysteriously fail a year later when no one knows why.

To resolve this, I guess a bugfix on the OntoWiki-PHP-Virtuoso system needs to be made somewhere, where ever the bug is caused. Maybe a robots.txt forbidding search machine access could at least prevent accidental deletions, if not malicious ones. If no resources need to be deleted for the moment, a .htaccess file also should provide a workaround.

**2014-04-14, HGG**

We have a very strange attack on our OntoWiki at leipzig-data.de/Data. Somehow the OntoWiki configuration base was replaced by another one with Anonymous having edit access to all data, and Anonymous changed much of the data. ... Any idea about that? We had a well configured OntoWiki before (no Anonymous rights but ReadModel) and at least I did not touch the configuration for many weeks.
