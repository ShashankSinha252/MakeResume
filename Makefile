TARGET =  source payu
CLEAN = $(TARGET:%=clean-%)

all: $(TARGET)

$(TARGET):
	cd $@ && $(MAKE)

backup-clean:
	rm -f *~

clean: $(CLEAN)
$(CLEAN):
	cd $(@:clean-%=%) && $(MAKE) temp-clean

.PHONY: $(TARGET)
.PHONY: clean $(CLEAN) backup-clean
