.DEFAULT_GOAL = view

.PHONY: diagram
diagram:
	sh ./viz.sh

.PHONY: view
view: diagram
	@open dist/diagram.png
