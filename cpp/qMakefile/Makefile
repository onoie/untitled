CXX=g++
MOC=moc-qt4
CFLAGS=-Wall
SOURCES=main.cpp slib.cpp
MOC_HEADERS=slib.h
EXECUTABLE=main.o
INCDIRS=-I/usr/include/qt4 -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtCore
LIBS=-lQtCore -lQtGui
# Change postfixes
MOC_SOURCES=$(MOC_HEADERS:.h=.moc.cc)
OBJECTS=$(SOURCES:.cc=.o) $(MOC_SOURCES:.cc=.o)

all: $(EXECUTABLE)
	@echo Done!

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $^ $(LIBS) -o $@

# Generate object files, rule to change postfix
%.o: %.cc
	$(CXX) $(CFLAGS) $(INCDIRS) -c $< -o $@

# Generate cc from h via Qt's Meta Object Compiler, rule to change postfix
%.moc.cc: %.h
	$(MOC) $(INCDIRS) $< -o $@

.PHONY: tags clean

clean:
	rm *.o

# Generate ctags file for all included files (autocomplete and jump to source)
tags:
	gcc -M $(INCDIRS) $(SOURCES) | \
	sed -e 's/[\\ ]/\n/g' | \
	sed -e '/^$$/d' -e '/\.o:[ \t]*$$/d' | \
	ctags -L - --c++-kinds=+p --fields=+iaS --extra=+q
