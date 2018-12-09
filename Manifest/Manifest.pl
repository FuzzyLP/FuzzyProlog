:- bundle('FuzzyProlog').
version('1.0').
depends([core-[version>='1.18']]).
alias_paths([
    library = 'lib'
]).
lib('lib').
manual('FuzzyProlog', [main='doc/SETTINGS.pl']).
