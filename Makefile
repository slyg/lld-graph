.DEFAULT_GOAL := view-merged
SHELL := /bin/bash
PATH := bin:$(PATH)

.PHONY: spread-diagram
spread-diagram:
	spread

.PHONY: merged-diagram
merged-diagram:
	merged

.PHONY: view-spread
view-spread: spread-diagram
	@open dist/spread-diagram.png

.PHONY: view-merged
view-merged: merged-diagram
	@open dist/merged-diagram.png
