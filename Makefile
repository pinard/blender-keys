# Define BLENDER so it finds your Blender executable.
BLENDER = blender
BLENDER = $(HOME)/etc/bin/blender

all: blender-keys.org operators.org
	@echo
	@echo blender-keys.org
	@echo ----------------
	@echo
	@cat blender-keys.org
	@echo
	@echo operators.org
	@echo -------------
	@echo
	@cat operators.org

blender-keys.org operators.org: blender-keys
# The >2 /dev/null is a kludge to hide a spurious traceback from Blender.
	$(BLENDER) -b -P blender-keys 2> /dev/null
