:- module(_, [], [ciaobld(bundlehooks)]).

:- doc(title,  "Bundle Hooks for FuzzyProlog").

'$builder_hook'(desc_name('FuzzyProlog')).

'$builder_hook'(manual_dir(as('doc', 'FuzzyProlog'))).

% ============================================================================

:- use_module(ciaobld(ciaoc_aux), [build_libs/2]).

'$builder_hook'(build_libraries) :-
	build_libs('FuzzyProlog', 'lib').

'$builder_hook'(install) :- bundleitem_do(only_global_ins(~desc), 'FuzzyProlog', install).

'$builder_hook'(uninstall) :- bundleitem_do(only_global_ins(~desc), 'FuzzyProlog', uninstall).

desc := [
  lib('FuzzyProlog', 'lib')
].
