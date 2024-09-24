# Fuzzy Prolog

This package implements an extension of Prolog to deal with
uncertainty, implemented as a
[Ciao](https://github.com/ciao-lang/ciao) package.

We implement a fuzzy Prolog that models
**interval-valued fuzzy logic**. This approach is more general than other
fuzzy Prologs in two aspects:

1. Truth values are sub-intervals on [0,1]. In fact, it could
   be a finite union of sub-intervals, as we will see below. Having a
   unique truth value is a particular case modeled with a unitary
   interval.
2. Truth values are propagated through the rules by means of a
   set of @em{aggregation operators}. The definition of an @em{aggregation
   operator} is a generalization that subsumes conjunctive operators
   (triangular norms as min, prod, etc.), disjunctive operators
   (triangular co-norms as max, sum, etc.), average operators
   (averages as arithmetic average, cuasi-linear  average, etc.) and
   hybrid operators (combinations of previous operators).

We add uncertainty using CLP(R) instead of implementing a new fuzzy
resolution as other fuzzy Prologs. In this way, we use the original
inference mechanism of Prolog, and we use the constraints and its
operations provided by CLP(R) to handle the concept of partial
truth. We represent intervals as constrains over real numbers and
@em{aggregation operators} as operations with constraints.

Each fuzzy predicate has an additional argument which represents its
truth value. We use `:~' instead of `:-' to distinguish fuzzy
clauses from prolog clauses. In fuzzy clauses, truth values are obtained
via an aggregation operator. There is also some syntactic sugar for
defining fuzzy predicates with certain membership functions, the fuzzy
counterparts of crisp predicates, and the fuzzy negation of a fuzzy
predicate.

# Installation and usage

You can automatically fetch, build, and install this package using:

```sh
ciao get github.com/FuzzyLP/FuzzyProlog
```

This command stores the source and compiles them in the Ciao
_workspace directory_. This directory is given by the value of the
`CIAOPATH` environment variable (or `~/.ciao` if unspecified).

Documentation is placed in the `$CIAOPATH/build/doc` directory (or
`~/.ciao/build/doc`).

**For developing** it is recommended to define `CIAOPATH` (E.g.,
`~/ciao`) and clone this repository in your workspace.

# Examples

Look at the [examples](examples/) directory.
