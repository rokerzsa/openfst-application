fstcompile --keep_isymbols --keep_osymbols --isymbols=isyms_ascii.syms --osymbols=osyms.syms full_rules.fst full_binary.fst
fstdraw --isymbols=isyms_ascii.syms --osymbols=osyms.syms full_binary.fst > full_binary.dot
dot -Tjpg -Gdpi=300 full_binary.dot > full_binary.jpg
