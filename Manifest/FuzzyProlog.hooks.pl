:- module(_, [], [ciaobld(bundlehooks)]).

:- doc(title,  "Bundle Hooks for FuzzyProlog").

%:- use_module(ciaobld(ciaoc_aux), [runtests_dir/2]).
:- use_module(library(system), [working_directory/2]).
:- use_module(ciaobld(ciaoc_aux), [invoke_ciaosh_batch/1]).
:- use_module(library(bundle/bundle_paths), [bundle_path/3]).

'$builder_hook'(test) :- !,
%	runtests_dir('FuzzyProlog', 'tests').
	working_directory(ThisDir, ~bundle_path('FuzzyProlog', 'tests')),
	invoke_ciaosh_batch([
	  use_module(test_fuzzy, [test_fuzzy/0]),
	  test_fuzzy
	]),
	working_directory(_, ThisDir).

