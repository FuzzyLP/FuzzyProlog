:- module(_, _, [lpdoclib(doccfg)]).

:- doc(title, "Configuration for FuzzyProlog manual").

filepath := ~fsR(bundle_src('FuzzyProlog')/doc).
filepath := ~fsR(bundle_src('FuzzyProlog')/lib).
filepath := ~fsR(bundle_src('FuzzyProlog')). % (for examples/)

output_name := 'FuzzyProlog'.

doc_structure := 'fuzzy/fuzzy_doc'.
