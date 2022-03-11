The `jmsdelim` package
======================

A package for compositional delimiter sizing.

Correctly sizing delimiters is very difficult, particularly in well-architected
documents: a correctly engineered mathematical document will include macros for
all operations, and these macros necessarily will include delimiters (such as
parentheses). However, the correct size for the delimiter cannot be chosen
ahead of time, because it will depend on the arguments; two options are
available:

1. Provide optional arguments to each notation macro for choosing delimiter
   sizes. This is nearly intractable to do in practice.

2. Ignore delimiter sizes.

With jmsdelim we offer an alternative: the correct delimiter sizes can be set
at the leaf nodes of a mathematical expression, and magically bubble upward
through the delimiters.



Contents
--------

The following files are included:
- `jmsdelim.dtx` : the doctrip source for the package and documentation
- `jmsdelim.ins` : the generation script for producing `ebproof-rules.sty`

The package requires `expl3` (the LaTeX3 programming environment) which
provides many useful programming tools.

To build the documenation, run `l3build doc`.


License
-------

Copyright 2022 Jonathan Sterling <jon@jonmsterling.com>

This work may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either version 1.3
of this license or (at your option) any later version.
The latest version of this license is in
 <http://www.latex-project.org/lppl.txt>
and version 1.3 or later is part of all distributions of LaTeX
version 2005/12/01 or later.

This work has the LPPL maintenance status “maintained”.

The Current Maintainer of this work is Jonathan Sterling.

This work consists of the file `jmsdelim.dtx`.


