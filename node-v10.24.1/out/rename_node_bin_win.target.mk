# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := rename_node_bin_win
### Rules for final target.
$(obj).target/rename_node_bin_win.stamp: TOOLSET := $(TOOLSET)
$(obj).target/rename_node_bin_win.stamp: $(builddir)/node FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).target/rename_node_bin_win.stamp
# Add target alias
.PHONY: rename_node_bin_win
rename_node_bin_win: $(obj).target/rename_node_bin_win.stamp

# Add target alias to "all" target.
.PHONY: all
all: rename_node_bin_win

