RM_BINARY=rm
RM_FLAGS=-rf
MKDIR_BINARY=mkdir
MKDIR_FLAGS=-p
BUILD_FOLDER=$(abspath ./bin)
DIR = $(abspath .)
INPUTS = $(wildcard $(DIR)/*.asm)
SPASM_BINARY = spasm
SPASM_FLAGS = -E -T

.DEFAULT_GOAL := default

# Create the build folder
$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

# Compiles all ASM files in a given
$(INPUTS) : $(BUILD_FOLDER)
	$(SPASM_BINARY) $(SPASM_FLAGS)  $@ $(patsubst $(DIR)/%.asm,$(BUILD_FOLDER)/%.8xp,$(@))

default: clean all

all: $(INPUTS)

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
