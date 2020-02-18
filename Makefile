##########################################
# Targets
# $@ = file to be made
# $? = changed dependents
# $< = file that caused action
# $* = prefix shared by target and dependent files


%.scad: %.scad.py
	python3 $< > $@

%.stl:	%.scad
	openscad -m make -o $@ $<

