.DEFAULT_GOAL := diagram-merged
SHELL := /bin/bash
PATH := bin:$(PATH)

.PHONY: diagram-merged
diagram-merged:
	graph 3
	@open dist/diagram.png


.PHONY: diagram-spread
diagram-spread:
	graph
	@open dist/diagram.png
