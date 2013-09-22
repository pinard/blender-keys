# Define BLENDER so it finds your Blender executable.
BLENDER = blender
BLENDER = $(HOME)/etc/bin/blender

all: blender-keys.org
	@echo
	@echo blender-keys.org
	@echo ----------------
	@echo
	@cat blender-keys.org
	@echo
	@echo blender-modes.org
	@echo ----------------
	@echo
	@cat blender-modes.org
	@echo
	@echo blender-operators.org
	@echo -------------
	@echo
	@cat blender-operators.org

blender-keys.org: blender-keys Makefile
	rm -f blender-keys.org blender-modes.org blender-operators.org
	$(BLENDER) -b -P blender-keys
