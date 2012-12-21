---
layout: default
title: Timing
---

A little Note on Time Measurement for Calculation Tasks
-------------------------------------------------------

=

There are different implementations of algorithms out there. Often one wants to compare their performance on several examples, and this comparison and its evaluation is desired to be as automatized as possible. Thus, there is a need of standard methods.

One possible approach: Usually computer algebra systems provide timing procedures, but often one cannot verify their validity due to e.g. their source not being open. Furthermore, sometimes some runtime-benefiting calculations are already done during the initialization phase; therefore one has to specify clearly (!) where to start the provided time measurement. Here, every program has to be analyzed in detail in order to make the comparison fair. At this point one can see that using the commands provided by the different CAS are not practical to use for comparisons.

A better approach: A fair way to do it is using an external time measurement tool as provided with almost every operating system (e.g. "time" for UNIX-like systems, or "timeit" for Windows) and count the time used from the start of the program until its termination. Here, one is independent of the programs to compare, but measures time with tools close to the operating system.

But there is still a problem with this way concerning automated evaluation of the timings, since the outputs differ from machine to machine due to different configurations. For example, on a computer we have access to we observe the following behavior:

% \$ time echo "Hello SymbolicData" Hello SymbolicData

real\\t0m0.001s user\\t0m0.000s sys\\t0m0.000s %

Experience showed us, that different outputs are quite usual. That makes it harder to write tools that can work with time outputs independent from the system.

One solution for that problem: pick the time measurement tool that one should use and provide it with the analyzation package. The flip side of that solution is that another user has to trust the validity of that time measurement tool and is not allowed to use the standard tool on his own machine. Therefore this solution is not practicable.

The better solution: Fortunately, there is an IEEE standard for that output stated in the standard 1003.2-1992 (*POSIX.2*). It has the format

  
"real %f\\

user %f\\ sys %f\\ ".

For the "time" command on UNIX-systems, one simply has to add the flag "-p" to the "time" command and the output is generated in the desired way. Therefore, for the same example as above, we obtain:

% \$ time -p echo "Hello SymbolicData" Hello SymbolicData real 0.00 user 0.00 sys 0.00 %

Using this, one is independent of the machine where the comparison is run and only has to adjust the "time"-command to produce this standardized output. We recommend using that in order to automatized extract time measurement of different calculations stored in several files. We used it also in the project SDEval for evaluation of the outputs of different computer algebra systems.
