JAR = ../antlr-4.13.1-complete.jar

all:
	java -jar $(JAR) mylexer.g4
	javac -cp ".:$(JAR)" *.java

run1:
	java -cp ".:$(JAR)" testLexer sample1.c

run2:
	java -cp ".:$(JAR)" testLexer sample2.c

run3:
	java -cp ".:$(JAR)" testLexer sample3.c

run4:
	java -cp ".:$(JAR)" testLexer sample4.c

run5:
	java -cp ".:$(JAR)" testLexer sample5.c

run6:
	java -cp ".:$(JAR)" testLexer sample6.c


clean:
	rm -f *.class *.tokens *.interp mylexer.java
