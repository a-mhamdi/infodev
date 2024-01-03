DIR := $(wildcard *.typ)
EXCLUDE := Class.typ Timeline.typ

FILES := $(filter-out $(EXCLUDE), $(DIR))

typst := /home/mhamdi/appware/typst-x86_64-unknown-linux-musl/typst 

task: 
	$(foreach file,$(FILES),${typst} compile --root ../ $(file);)

