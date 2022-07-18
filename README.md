# openfst-application
Application of openfst to create a finite state transducer which accepts all the UPPERCASE words containing one or more of U, V or W

<br><strong>Problem:-</strong> Using standard values of tuples in Finite State Machines (FSM) and appropriate Finite State Transducers (FST) operations on them, to create an Automata which accepts any
the capitalized word that contains the letter any of the letters U, V, or W one or more times.
<br><br><strong>Brief Description of the project:-</strong> For this purpose, you will use the OpenFst Library, an open-source project developed by contributors from Google Research and NYU’s Courant Institute. Refer to the following link: www.openfst.org.
<br><br><strong>Deliverables:-</strong>
<br>Input:- AUXCABLE
<br>Output:- yes
<br>InputL HELLOMAN
<br>Output:- no
<br><br>
<strong>Requirements</strong>
<br>1. openfst library
<br>2. graphviz library
<br>

# How to install libraries in UBUNTU
<br><strong>1. openfst library</strong>
<br>$ apt install libfst-tools
<br><strong>2. graphviz library</strong>
<br>$ apt install graphviz
<br>
# How does it work?
<br>
<br><strong>Input Symbols</strong>
<br>$ cat >osyms.txt <<EOF
<br><eps> 0
<br>a 1
<br>b 2
<br>c 3
<br>EOF
<br>
<br><strong>Output Symbols</strong>
<br><eps> 0
<br>x 1
<br>y 2
<br>z 3
<br>EOF
<br>
<br><strong>FST File</strong>
<br>$ cat >text.fst <<EOF
<br>0 1 a x .5
<br>0 1 b y 1.5
<br>1 2 c z 2.5
<br>2 3.5
<br>EOF
<br>
<br><strong>Compilation</strong>
<br>$ fstprint --keep_isymbols --keep_osymbols --isymbols=isyms.txt --osymbols=osyms.txt binary.fst text.fst
<br><br><strong>DRAW FST</strong>
<br>$ fstdraw --isymbols=isyms.txt --osymbols=osyms.txt binary.fst binary.dot
<br>$ dot -Tjpg -Gdpi=300 binary.dot > binary.jpg
<br>
