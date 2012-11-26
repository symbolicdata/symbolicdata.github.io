---
layout: default
title: Benchmarks
---

### How to run Benchmarks from the Data?

Benchmark examples are given

-   either directly as XML Resources
-   or as descriptions how to build the example from another resource.

**Q:** How can I extract the polynomials from the repository? For which CA system are they formatted? Are there scripts available that convert to some other system?

**A:** That's a really important point, since here are main design changes compared to the early 2000 version. We have XMLResources and Descriptions. The reason not to keep all examples as XMLResources is the experience with Olaf Bachmanns 2002 work - he produced parameterized, flat, homogenized, flat homogenized, parametized homogenized, parametized homogenized flat, etc. versions of examples that messed up the repository. Meanwhile I reduced XMLResources to "essentially different" examples. The XMLResources contain only informations about lists of polynomials, the Descriptions contain informations about the way how to generate the ideal bases of the different examples from that XMLResource (just the way Olaf did it).

Of course, you have to *run* that description on a certain CAS base that has *semantic* features (e.g., knows what it means to homogenize a polynomial) to generate the example. For the moment we have only the *sd:createCommand* formal description (addressing Singular). This requires further elaboration and for the time being you have to write your own scripts (and, hopefully, share it with the Project). Only based on enough such experience it will be time to decide for more standardization.

For the XMLResources you should extract polynomials from that source using your favorite progamming language (e.g., Perl) and your favourite XML.DOM package and then output it in a form that understands your CAS. For an example consult the `Scripts/perl/Compute/aca-test.pl` Perl script in the repo.

There is a big collection of *python files* by Albert Heinle for the FreeAlgebra part that may be adopted, too.
