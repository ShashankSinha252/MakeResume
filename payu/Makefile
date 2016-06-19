TARGET = source
DESTINATION = cv

default:
	latex $(TARGET).tex
	dvipdf $(TARGET).dvi
	mv $(TARGET).pdf $(DESTINATION).pdf

view:
	evince $(DESTINATION).pdf &

diff: temp-clean
	-diff -rupN ../source ./ --exclude="Makefile" \
		--exclude="*.pdf" --exclude="*.patch" \
		> diff.patch

edit:
	cp ../source/*.tex ./
	patch -p1 < diff.patch

backup-clean:
	rm -f *~

temp-clean: backup-clean
	rm -f *.log *.dvi *.aux	

clean-tex: diff
	rm -f *.tex

clean: temp-clean clean-tex
	rm *.pdf

.PHONY:	clean clean-tex
.PHONY: temp-clean backup-clean
.PHONY: diff edit
.PHONY: view default
