TARGET = source
DESTINATION = cv

default:
	latex $(TARGET).tex
	dvipdf $(TARGET).dvi
	mv $(TARGET).pdf $(DESTINATION).pdf

view:
	evince $(DESTINATION).pdf &

backup-clean:
	rm -f *~

temp-clean: backup-clean
	rm -f *.log *.dvi *.aux

clean: temp-clean
	rm -f *.pdf

.PHONY:	clean temp-clean backup-clean
.PHONY:default view
