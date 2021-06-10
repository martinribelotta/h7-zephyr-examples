last_make := $(lastword $(MAKEFILE_LIST))
abs_make := $(abspath $(last_make))
mkfile_path := $(realpath $(abs_make))
current_dir := $(dir $(mkfile_path))

WEST_PROJECT:=$(current_dir)/blinky
WEST_OPT:=-b generic_h750vb -DBOARD_ROOT=$(current_dir)

.PHONY: build clean flash config

build:
	west build $(WEST_PROJECT) $(WEST_OPT)

clean:
	west clean $(WEST_PROJECT) $(WEST_OPT)

flash:
	west flash

config:
	west build $(WEST_PROJECT) $(WEST_OPT) -t guiconfig
