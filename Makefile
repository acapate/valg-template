MAKE=make
DIRS=hw1 hw2 hw3 hw4

.PHONY: all clean $(DIRS)

all: $(DIRS) 

$(DIRS): 
	$(MAKE) -C $@

clean: 
	for dir in $(DIRS) ; do \
		make clean -C $$dir ; \
	done
