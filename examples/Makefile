PROG = hw3
STRFILE = mystring
MAINFILE = hw3main

test:		$(PROG)
		cat hw3.input | ./$(PROG)

$(PROG): 	$(STRFILE).o $(MAINFILE).o
		g++ -o $(PROG) $(STRFILE).o $(MAINFILE).o

$(STRFILE).o:	$(STRFILE).h $(STRFILE).cpp
		g++ -c $(STRFILE).cpp

$(MAINFILE).o:	$(MAINFILE).cpp $(STRFILE).h
		g++ -c $(MAINFILE).cpp

