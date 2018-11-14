INCLUDE_DIRS = -I.
WARNINGS = -Wall -Werror
OBJECTS = application.o component.o
CXX = g++
CPPFLAGS = $(INCLUDE_DIRS) $(WARNINGS)

application : $(OBJECTS)
	g++ -o application $(OBJECTS)

application.o : component.h

component.o : component.h

clean : 
	rm $(OBJECTS) application
