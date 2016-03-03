:- module(_, _, [lpdoclib(doccfg)]).

:- doc(title, "Configuration for FuzzyProlog manual").

datamode(_) :- fail.
execmode(_) :- fail.

% (not customized)
bibfile(_) :- fail.
htmldir(_) :- fail.
docdir(_) :- fail.
infodir(_) :- fail.
mandir(_) :- fail.

filepath := ~fsR(bundle_src('FuzzyProlog')/doc).
filepath := ~fsR(bundle_src('FuzzyProlog')/lib).
filepath := ~fsR(bundle_src('FuzzyProlog')). % (for examples/)

output_name := 'FuzzyProlog'.

doc_structure := 'fuzzy/fuzzy_doc'.
 
commonopts := no_bugs|no_patches.
doc_mainopts := ~commonopts.
doc_compopts := ~commonopts.

index := concept|lib|pred|prop|regtype|decl|author|global.

startpage := 1.

papertype := afourpaper.

libtexinfo := 'yes'.

docformat := texi|ps|pdf|manl|info|html.

