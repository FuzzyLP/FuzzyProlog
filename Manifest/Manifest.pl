:- bundle('FuzzyProlog').
version('1.0').
depends([core]).
alias_paths([
    library = 'lib'
]).
lib('lib').
manual('FuzzyProlog', [main='doc/SETTINGS.pl']).
