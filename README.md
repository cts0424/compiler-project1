# Project 1 - Lexical Analyzer

Files:
- mylexer.g4
- testLexer.java
- sample1~6.c
- Makefile

How to generate lexer:
java -jar ../antlr-4.13.1-complete.jar mylexer.g4

How to compile:
javac -cp ".:../antlr-4.13.1-complete.jar" *.java

How to run:
java -cp ".:../antlr-4.13.1-complete.jar" testLexer sample1.c

Extra features:
1. Added octal and hexadecimal integer literals.
2. Added character literals and string literals.
3. Added logical operators: &&, ||, !.

# Using Makefile
You can also use the provided Makefile to simplify the process.

### Build (generate lexer and compile)
make

### Run sample test files
make run1   # run sample1.c
make run2   # run sample2.c
make run3   # run sample3.c
make run4   # run sample4.c
make run5   # run sample5.c
make run6   # run sample6.c

### Clean generated files
make clean
