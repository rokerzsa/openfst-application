fstcompile --keep_isymbols --keep_osymbols --isymbols=isyms_up.syms --osymbols=osyms.syms ndm_rules.fst ndm_binary.fst
fstdraw --isymbols=isyms_up.syms --osymbols=osyms.syms ndm_binary.fst > ndm_binary.dot
dot -Tjpg -Gdpi=300 ndm_binary.dot > ndm_binary.jpg
