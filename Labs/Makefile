DIR := $(wildcard *.typ)
EXCLUDE := Class.typ Timeline.typ

FILES := $(filter-out $(EXCLUDE), $(DIR))

typst := ${HOME}/appware/apps/bin/typst 

task: 
	$(foreach file,$(FILES),${typst} compile --root ../ $(file);)

