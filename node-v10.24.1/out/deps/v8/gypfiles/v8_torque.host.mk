# This file is generated by gyp; do not edit.

TOOLSET := host
TARGET := v8_torque
### Rules for action "run_torque":
quiet_cmd__var_www_html_its_magento_node_v10_24_1_deps_v8_gypfiles_v8_gyp_v8_torque_host_run_torque = ACTION _var_www_html_its_magento_node_v10_24_1_deps_v8_gypfiles_v8_gyp_v8_torque_host_run_torque $@
cmd__var_www_html_its_magento_node_v10_24_1_deps_v8_gypfiles_v8_gyp_v8_torque_host_run_torque = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/deps/v8/gypfiles; mkdir -p $(obj)/gen/torque-generated; "$(builddir)/torque" ../src/builtins/base.tq ../src/builtins/array.tq ../src/builtins/typed-array.tq -o "$(obj)/gen/torque-generated"

$(obj)/gen/torque-generated/builtin-definitions-from-dsl.h: obj := $(abs_obj)
$(obj)/gen/torque-generated/builtin-definitions-from-dsl.h: builddir := $(abs_builddir)
$(obj)/gen/torque-generated/builtin-definitions-from-dsl.h: TOOLSET := $(TOOLSET)
$(obj)/gen/torque-generated/builtin-definitions-from-dsl.h $(obj)/gen/torque-generated/builtins-array-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-array-from-dsl-gen.h $(obj)/gen/torque-generated/builtins-base-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-base-from-dsl-gen.h $(obj)/gen/torque-generated/builtins-typed-array-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-typed-array-from-dsl-gen.h: 62f89f25c179c85d1b30758ed63a8fef5621c3a0.intermediate
	@:
.INTERMEDIATE: 62f89f25c179c85d1b30758ed63a8fef5621c3a0.intermediate
62f89f25c179c85d1b30758ed63a8fef5621c3a0.intermediate: $(builddir)/torque $(srcdir)/deps/v8/src/builtins/base.tq $(srcdir)/deps/v8/src/builtins/array.tq $(srcdir)/deps/v8/src/builtins/typed-array.tq FORCE_DO_CMD
	$(call do_cmd,touch)
	$(call do_cmd,_var_www_html_its_magento_node_v10_24_1_deps_v8_gypfiles_v8_gyp_v8_torque_host_run_torque)

all_deps += $(obj)/gen/torque-generated/builtin-definitions-from-dsl.h $(obj)/gen/torque-generated/builtins-array-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-array-from-dsl-gen.h $(obj)/gen/torque-generated/builtins-base-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-base-from-dsl-gen.h $(obj)/gen/torque-generated/builtins-typed-array-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-typed-array-from-dsl-gen.h
action__var_www_html_its_magento_node_v10_24_1_deps_v8_gypfiles_v8_gyp_v8_torque_host_run_torque_outputs := $(obj)/gen/torque-generated/builtin-definitions-from-dsl.h $(obj)/gen/torque-generated/builtins-array-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-array-from-dsl-gen.h $(obj)/gen/torque-generated/builtins-base-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-base-from-dsl-gen.h $(obj)/gen/torque-generated/builtins-typed-array-from-dsl-gen.cc $(obj)/gen/torque-generated/builtins-typed-array-from-dsl-gen.h


### Rules for final target.
# Build our special outputs first.
$(obj).host/deps/v8/gypfiles/v8_torque.stamp: | $(action__var_www_html_its_magento_node_v10_24_1_deps_v8_gypfiles_v8_gyp_v8_torque_host_run_torque_outputs)

# Preserve order dependency of special output on deps.
$(action__var_www_html_its_magento_node_v10_24_1_deps_v8_gypfiles_v8_gyp_v8_torque_host_run_torque_outputs): | $(builddir)/torque

$(obj).host/deps/v8/gypfiles/v8_torque.stamp: TOOLSET := $(TOOLSET)
$(obj).host/deps/v8/gypfiles/v8_torque.stamp: $(builddir)/torque FORCE_DO_CMD
	$(call do_cmd,touch)

all_deps += $(obj).host/deps/v8/gypfiles/v8_torque.stamp
# Add target alias
.PHONY: v8_torque
v8_torque: $(obj).host/deps/v8/gypfiles/v8_torque.stamp

# Add target alias to "all" target.
.PHONY: all
all: v8_torque

