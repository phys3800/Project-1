# Makefile
CC=gfortran
TARGET1=differentiate
TARGET2=integrate

all:	differentiate integrate

differentiate:	differentiate.o
	${CC} differentiate.o -o ${TARGET1}

differentiate.o:	differentiate.f90
	${CC} -c differentiate.f90

integrate:	integrate.o
	${CC} integrate.o -o ${TARGET2}

integrate.o:	integrate.f90
	${CC} -c integrate.f90

clean:
	rm -f ${TARGET1}
	rm -f ${TARGET2}
	rm -f *~
	rm -f *.o
