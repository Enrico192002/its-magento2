# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := node_lib
### Rules for action "node_js2c":
quiet_cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c = ACTION _var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c $@
cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(obj)/gen; python tools/js2c.py "$(obj)/gen/node_javascript.cc" lib/internal/per_context.js lib/internal/bootstrap/cache.js lib/internal/bootstrap/loaders.js lib/internal/bootstrap/node.js lib/async_hooks.js lib/assert.js lib/buffer.js lib/child_process.js lib/console.js lib/constants.js lib/crypto.js lib/cluster.js lib/dgram.js lib/dns.js lib/domain.js lib/events.js lib/fs.js lib/http.js lib/http2.js lib/_http_agent.js lib/_http_client.js lib/_http_common.js lib/_http_incoming.js lib/_http_outgoing.js lib/_http_server.js lib/https.js lib/inspector.js lib/module.js lib/net.js lib/os.js lib/path.js lib/perf_hooks.js lib/process.js lib/punycode.js lib/querystring.js lib/readline.js lib/repl.js lib/stream.js lib/_stream_readable.js lib/_stream_writable.js lib/_stream_duplex.js lib/_stream_transform.js lib/_stream_passthrough.js lib/_stream_wrap.js lib/string_decoder.js lib/sys.js lib/timers.js lib/tls.js lib/_tls_common.js lib/_tls_wrap.js lib/trace_events.js lib/tty.js lib/url.js lib/util.js lib/v8.js lib/vm.js lib/worker_threads.js lib/zlib.js lib/internal/assert.js lib/internal/async_hooks.js lib/internal/bash_completion.js lib/internal/buffer.js lib/internal/cli_table.js lib/internal/child_process.js lib/internal/cluster/child.js lib/internal/cluster/master.js lib/internal/cluster/round_robin_handle.js lib/internal/cluster/shared_handle.js lib/internal/cluster/utils.js lib/internal/cluster/worker.js lib/internal/crypto/certificate.js lib/internal/crypto/cipher.js lib/internal/crypto/diffiehellman.js lib/internal/crypto/hash.js lib/internal/crypto/keygen.js lib/internal/crypto/pbkdf2.js lib/internal/crypto/random.js lib/internal/crypto/scrypt.js lib/internal/crypto/sig.js lib/internal/crypto/util.js lib/internal/constants.js lib/internal/dgram.js lib/internal/dns/promises.js lib/internal/dns/utils.js lib/internal/domexception.js lib/internal/encoding.js lib/internal/errors.js lib/internal/error-serdes.js lib/internal/fixed_queue.js lib/internal/freelist.js lib/internal/fs/promises.js lib/internal/fs/read_file_context.js lib/internal/fs/streams.js lib/internal/fs/sync_write_stream.js lib/internal/fs/utils.js lib/internal/fs/watchers.js lib/internal/http.js lib/internal/inspector_async_hook.js lib/internal/linkedlist.js lib/internal/modules/cjs/helpers.js lib/internal/modules/cjs/loader.js lib/internal/modules/esm/loader.js lib/internal/modules/esm/create_dynamic_module.js lib/internal/modules/esm/default_resolve.js lib/internal/modules/esm/module_job.js lib/internal/modules/esm/module_map.js lib/internal/modules/esm/translators.js lib/internal/safe_globals.js lib/internal/net.js lib/internal/options.js lib/internal/print_help.js lib/internal/process/esm_loader.js lib/internal/process/main_thread_only.js lib/internal/process/next_tick.js lib/internal/process/per_thread.js lib/internal/process/promises.js lib/internal/process/stdio.js lib/internal/process/warning.js lib/internal/process/worker_thread_only.js lib/internal/querystring.js lib/internal/process/write-coverage.js lib/internal/process/coverage.js lib/internal/readline.js lib/internal/repl.js lib/internal/repl/await.js lib/internal/repl/recoverable.js lib/internal/socket_list.js lib/internal/test/binding.js lib/internal/test/heap.js lib/internal/timers.js lib/internal/tls.js lib/internal/trace_events_async_hooks.js lib/internal/tty.js lib/internal/url.js lib/internal/util.js lib/internal/util/comparisons.js lib/internal/util/inspect.js lib/internal/util/inspector.js lib/internal/util/types.js lib/internal/http2/core.js lib/internal/http2/compat.js lib/internal/http2/util.js lib/internal/v8_prof_polyfill.js lib/internal/v8_prof_processor.js lib/internal/validators.js lib/internal/stream_base_commons.js lib/internal/vm/source_text_module.js lib/internal/worker.js lib/internal/streams/lazy_transform.js lib/internal/streams/async_iterator.js lib/internal/streams/buffer_list.js lib/internal/streams/duplexpair.js lib/internal/streams/from.js lib/internal/streams/legacy.js lib/internal/streams/destroy.js lib/internal/streams/state.js lib/internal/streams/pipeline.js lib/internal/streams/end-of-stream.js lib/internal/wrap_js_stream.js deps/v8/tools/splaytree.js deps/v8/tools/codemap.js deps/v8/tools/consarray.js deps/v8/tools/csvparser.js deps/v8/tools/profile.js deps/v8/tools/profile_view.js deps/v8/tools/logreader.js deps/v8/tools/arguments.js deps/v8/tools/tickprocessor.js deps/v8/tools/SourceMap.js deps/v8/tools/tickprocessor-driver.js deps/node-inspect/lib/_inspect.js deps/node-inspect/lib/internal/inspect_client.js deps/node-inspect/lib/internal/inspect_repl.js deps/acorn/dist/acorn.js deps/acorn/dist/walk.js config.gypi tools/check_macros.py src/notrace_macros.py src/noperfctr_macros.py tools/nodcheck_macros.py

$(obj)/gen/node_javascript.cc: obj := $(abs_obj)
$(obj)/gen/node_javascript.cc: builddir := $(abs_builddir)
$(obj)/gen/node_javascript.cc: TOOLSET := $(TOOLSET)
$(obj)/gen/node_javascript.cc: $(srcdir)/lib/internal/per_context.js $(srcdir)/lib/internal/bootstrap/cache.js $(srcdir)/lib/internal/bootstrap/loaders.js $(srcdir)/lib/internal/bootstrap/node.js $(srcdir)/lib/async_hooks.js $(srcdir)/lib/assert.js $(srcdir)/lib/buffer.js $(srcdir)/lib/child_process.js $(srcdir)/lib/console.js $(srcdir)/lib/constants.js $(srcdir)/lib/crypto.js $(srcdir)/lib/cluster.js $(srcdir)/lib/dgram.js $(srcdir)/lib/dns.js $(srcdir)/lib/domain.js $(srcdir)/lib/events.js $(srcdir)/lib/fs.js $(srcdir)/lib/http.js $(srcdir)/lib/http2.js $(srcdir)/lib/_http_agent.js $(srcdir)/lib/_http_client.js $(srcdir)/lib/_http_common.js $(srcdir)/lib/_http_incoming.js $(srcdir)/lib/_http_outgoing.js $(srcdir)/lib/_http_server.js $(srcdir)/lib/https.js $(srcdir)/lib/inspector.js $(srcdir)/lib/module.js $(srcdir)/lib/net.js $(srcdir)/lib/os.js $(srcdir)/lib/path.js $(srcdir)/lib/perf_hooks.js $(srcdir)/lib/process.js $(srcdir)/lib/punycode.js $(srcdir)/lib/querystring.js $(srcdir)/lib/readline.js $(srcdir)/lib/repl.js $(srcdir)/lib/stream.js $(srcdir)/lib/_stream_readable.js $(srcdir)/lib/_stream_writable.js $(srcdir)/lib/_stream_duplex.js $(srcdir)/lib/_stream_transform.js $(srcdir)/lib/_stream_passthrough.js $(srcdir)/lib/_stream_wrap.js $(srcdir)/lib/string_decoder.js $(srcdir)/lib/sys.js $(srcdir)/lib/timers.js $(srcdir)/lib/tls.js $(srcdir)/lib/_tls_common.js $(srcdir)/lib/_tls_wrap.js $(srcdir)/lib/trace_events.js $(srcdir)/lib/tty.js $(srcdir)/lib/url.js $(srcdir)/lib/util.js $(srcdir)/lib/v8.js $(srcdir)/lib/vm.js $(srcdir)/lib/worker_threads.js $(srcdir)/lib/zlib.js $(srcdir)/lib/internal/assert.js $(srcdir)/lib/internal/async_hooks.js $(srcdir)/lib/internal/bash_completion.js $(srcdir)/lib/internal/buffer.js $(srcdir)/lib/internal/cli_table.js $(srcdir)/lib/internal/child_process.js $(srcdir)/lib/internal/cluster/child.js $(srcdir)/lib/internal/cluster/master.js $(srcdir)/lib/internal/cluster/round_robin_handle.js $(srcdir)/lib/internal/cluster/shared_handle.js $(srcdir)/lib/internal/cluster/utils.js $(srcdir)/lib/internal/cluster/worker.js $(srcdir)/lib/internal/crypto/certificate.js $(srcdir)/lib/internal/crypto/cipher.js $(srcdir)/lib/internal/crypto/diffiehellman.js $(srcdir)/lib/internal/crypto/hash.js $(srcdir)/lib/internal/crypto/keygen.js $(srcdir)/lib/internal/crypto/pbkdf2.js $(srcdir)/lib/internal/crypto/random.js $(srcdir)/lib/internal/crypto/scrypt.js $(srcdir)/lib/internal/crypto/sig.js $(srcdir)/lib/internal/crypto/util.js $(srcdir)/lib/internal/constants.js $(srcdir)/lib/internal/dgram.js $(srcdir)/lib/internal/dns/promises.js $(srcdir)/lib/internal/dns/utils.js $(srcdir)/lib/internal/domexception.js $(srcdir)/lib/internal/encoding.js $(srcdir)/lib/internal/errors.js $(srcdir)/lib/internal/error-serdes.js $(srcdir)/lib/internal/fixed_queue.js $(srcdir)/lib/internal/freelist.js $(srcdir)/lib/internal/fs/promises.js $(srcdir)/lib/internal/fs/read_file_context.js $(srcdir)/lib/internal/fs/streams.js $(srcdir)/lib/internal/fs/sync_write_stream.js $(srcdir)/lib/internal/fs/utils.js $(srcdir)/lib/internal/fs/watchers.js $(srcdir)/lib/internal/http.js $(srcdir)/lib/internal/inspector_async_hook.js $(srcdir)/lib/internal/linkedlist.js $(srcdir)/lib/internal/modules/cjs/helpers.js $(srcdir)/lib/internal/modules/cjs/loader.js $(srcdir)/lib/internal/modules/esm/loader.js $(srcdir)/lib/internal/modules/esm/create_dynamic_module.js $(srcdir)/lib/internal/modules/esm/default_resolve.js $(srcdir)/lib/internal/modules/esm/module_job.js $(srcdir)/lib/internal/modules/esm/module_map.js $(srcdir)/lib/internal/modules/esm/translators.js $(srcdir)/lib/internal/safe_globals.js $(srcdir)/lib/internal/net.js $(srcdir)/lib/internal/options.js $(srcdir)/lib/internal/print_help.js $(srcdir)/lib/internal/process/esm_loader.js $(srcdir)/lib/internal/process/main_thread_only.js $(srcdir)/lib/internal/process/next_tick.js $(srcdir)/lib/internal/process/per_thread.js $(srcdir)/lib/internal/process/promises.js $(srcdir)/lib/internal/process/stdio.js $(srcdir)/lib/internal/process/warning.js $(srcdir)/lib/internal/process/worker_thread_only.js $(srcdir)/lib/internal/querystring.js $(srcdir)/lib/internal/process/write-coverage.js $(srcdir)/lib/internal/process/coverage.js $(srcdir)/lib/internal/readline.js $(srcdir)/lib/internal/repl.js $(srcdir)/lib/internal/repl/await.js $(srcdir)/lib/internal/repl/recoverable.js $(srcdir)/lib/internal/socket_list.js $(srcdir)/lib/internal/test/binding.js $(srcdir)/lib/internal/test/heap.js $(srcdir)/lib/internal/timers.js $(srcdir)/lib/internal/tls.js $(srcdir)/lib/internal/trace_events_async_hooks.js $(srcdir)/lib/internal/tty.js $(srcdir)/lib/internal/url.js $(srcdir)/lib/internal/util.js $(srcdir)/lib/internal/util/comparisons.js $(srcdir)/lib/internal/util/inspect.js $(srcdir)/lib/internal/util/inspector.js $(srcdir)/lib/internal/util/types.js $(srcdir)/lib/internal/http2/core.js $(srcdir)/lib/internal/http2/compat.js $(srcdir)/lib/internal/http2/util.js $(srcdir)/lib/internal/v8_prof_polyfill.js $(srcdir)/lib/internal/v8_prof_processor.js $(srcdir)/lib/internal/validators.js $(srcdir)/lib/internal/stream_base_commons.js $(srcdir)/lib/internal/vm/source_text_module.js $(srcdir)/lib/internal/worker.js $(srcdir)/lib/internal/streams/lazy_transform.js $(srcdir)/lib/internal/streams/async_iterator.js $(srcdir)/lib/internal/streams/buffer_list.js $(srcdir)/lib/internal/streams/duplexpair.js $(srcdir)/lib/internal/streams/from.js $(srcdir)/lib/internal/streams/legacy.js $(srcdir)/lib/internal/streams/destroy.js $(srcdir)/lib/internal/streams/state.js $(srcdir)/lib/internal/streams/pipeline.js $(srcdir)/lib/internal/streams/end-of-stream.js $(srcdir)/lib/internal/wrap_js_stream.js $(srcdir)/deps/v8/tools/splaytree.js $(srcdir)/deps/v8/tools/codemap.js $(srcdir)/deps/v8/tools/consarray.js $(srcdir)/deps/v8/tools/csvparser.js $(srcdir)/deps/v8/tools/profile.js $(srcdir)/deps/v8/tools/profile_view.js $(srcdir)/deps/v8/tools/logreader.js $(srcdir)/deps/v8/tools/arguments.js $(srcdir)/deps/v8/tools/tickprocessor.js $(srcdir)/deps/v8/tools/SourceMap.js $(srcdir)/deps/v8/tools/tickprocessor-driver.js $(srcdir)/deps/node-inspect/lib/_inspect.js $(srcdir)/deps/node-inspect/lib/internal/inspect_client.js $(srcdir)/deps/node-inspect/lib/internal/inspect_repl.js $(srcdir)/deps/acorn/dist/acorn.js $(srcdir)/deps/acorn/dist/walk.js $(srcdir)/config.gypi $(srcdir)/tools/check_macros.py $(srcdir)/src/notrace_macros.py $(srcdir)/src/noperfctr_macros.py $(srcdir)/tools/nodcheck_macros.py FORCE_DO_CMD
	$(call do_cmd,_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c)

all_deps += $(obj)/gen/node_javascript.cc
action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c_outputs := $(obj)/gen/node_javascript.cc

### Rules for action "convert_node_protocol_to_json":
quiet_cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json = ACTION _var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json $@
cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(obj)/gen; python tools/inspector_protocol/convert_protocol_to_json.py "$(obj)/gen/node_protocol.pdl" "$(obj)/gen/node_protocol.json"

$(obj)/gen/node_protocol.json: obj := $(abs_obj)
$(obj)/gen/node_protocol.json: builddir := $(abs_builddir)
$(obj)/gen/node_protocol.json: TOOLSET := $(TOOLSET)
$(obj)/gen/node_protocol.json: $(obj)/gen/node_protocol.pdl FORCE_DO_CMD
	$(call do_cmd,_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json)

all_deps += $(obj)/gen/node_protocol.json
action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json_outputs := $(obj)/gen/node_protocol.json

### Rules for action "node_protocol_generated_sources":
quiet_cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_protocol_generated_sources = ACTION Generating node protocol sources from protocol json $@
cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_protocol_generated_sources = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(obj)/gen/src/node/inspector/protocol; python tools/inspector_protocol/code_generator.py --jinja_dir tools/inspector_protocol/.. --output_base "$(obj)/gen/src/" --config "$(obj)/gen/node_protocol_config.json"

$(obj)/gen/src/node/inspector/protocol/Forward.h: obj := $(abs_obj)
$(obj)/gen/src/node/inspector/protocol/Forward.h: builddir := $(abs_builddir)
$(obj)/gen/src/node/inspector/protocol/Forward.h: TOOLSET := $(TOOLSET)
$(obj)/gen/src/node/inspector/protocol/Forward.h $(obj)/gen/src/node/inspector/protocol/Protocol.cpp $(obj)/gen/src/node/inspector/protocol/Protocol.h $(obj)/gen/src/node/inspector/protocol/NodeWorker.cpp $(obj)/gen/src/node/inspector/protocol/NodeWorker.h $(obj)/gen/src/node/inspector/protocol/NodeTracing.cpp $(obj)/gen/src/node/inspector/protocol/NodeTracing.h: e3d8b4232df7567270e282fc1939abe866871ba2.intermediate
	@:
.INTERMEDIATE: e3d8b4232df7567270e282fc1939abe866871ba2.intermediate
e3d8b4232df7567270e282fc1939abe866871ba2.intermediate: $(obj)/gen/node_protocol_config.json $(obj)/gen/node_protocol.json $(srcdir)/tools/inspector_protocol/lib/Allocator_h.template $(srcdir)/tools/inspector_protocol/lib/Array_h.template $(srcdir)/tools/inspector_protocol/lib/Collections_h.template $(srcdir)/tools/inspector_protocol/lib/DispatcherBase_cpp.template $(srcdir)/tools/inspector_protocol/lib/DispatcherBase_h.template $(srcdir)/tools/inspector_protocol/lib/ErrorSupport_cpp.template $(srcdir)/tools/inspector_protocol/lib/ErrorSupport_h.template $(srcdir)/tools/inspector_protocol/lib/Forward_h.template $(srcdir)/tools/inspector_protocol/lib/FrontendChannel_h.template $(srcdir)/tools/inspector_protocol/lib/Maybe_h.template $(srcdir)/tools/inspector_protocol/lib/Object_cpp.template $(srcdir)/tools/inspector_protocol/lib/Object_h.template $(srcdir)/tools/inspector_protocol/lib/Parser_cpp.template $(srcdir)/tools/inspector_protocol/lib/Parser_h.template $(srcdir)/tools/inspector_protocol/lib/Protocol_cpp.template $(srcdir)/tools/inspector_protocol/lib/ValueConversions_h.template $(srcdir)/tools/inspector_protocol/lib/Values_cpp.template $(srcdir)/tools/inspector_protocol/lib/Values_h.template $(srcdir)/tools/inspector_protocol/templates/Exported_h.template $(srcdir)/tools/inspector_protocol/templates/Imported_h.template $(srcdir)/tools/inspector_protocol/templates/TypeBuilder_cpp.template $(srcdir)/tools/inspector_protocol/templates/TypeBuilder_h.template $(srcdir)/tools/inspector_protocol/code_generator.py FORCE_DO_CMD
	$(call do_cmd,touch)
	$(call do_cmd,_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_protocol_generated_sources)

all_deps += $(obj)/gen/src/node/inspector/protocol/Forward.h $(obj)/gen/src/node/inspector/protocol/Protocol.cpp $(obj)/gen/src/node/inspector/protocol/Protocol.h $(obj)/gen/src/node/inspector/protocol/NodeWorker.cpp $(obj)/gen/src/node/inspector/protocol/NodeWorker.h $(obj)/gen/src/node/inspector/protocol/NodeTracing.cpp $(obj)/gen/src/node/inspector/protocol/NodeTracing.h
action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_protocol_generated_sources_outputs := $(obj)/gen/src/node/inspector/protocol/Forward.h $(obj)/gen/src/node/inspector/protocol/Protocol.cpp $(obj)/gen/src/node/inspector/protocol/Protocol.h $(obj)/gen/src/node/inspector/protocol/NodeWorker.cpp $(obj)/gen/src/node/inspector/protocol/NodeWorker.h $(obj)/gen/src/node/inspector/protocol/NodeTracing.cpp $(obj)/gen/src/node/inspector/protocol/NodeTracing.h

### Rules for action "concatenate_protocols":
quiet_cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols = ACTION _var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols $@
cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(obj)/gen; python tools/inspector_protocol/concatenate_protocols.py deps/v8/src/inspector/js_protocol.json "$(obj)/gen/node_protocol.json" "$(obj)/gen/concatenated_protocol.json"

$(obj)/gen/concatenated_protocol.json: obj := $(abs_obj)
$(obj)/gen/concatenated_protocol.json: builddir := $(abs_builddir)
$(obj)/gen/concatenated_protocol.json: TOOLSET := $(TOOLSET)
$(obj)/gen/concatenated_protocol.json: $(srcdir)/deps/v8/src/inspector/js_protocol.json $(obj)/gen/node_protocol.json FORCE_DO_CMD
	$(call do_cmd,_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols)

all_deps += $(obj)/gen/concatenated_protocol.json
action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols_outputs := $(obj)/gen/concatenated_protocol.json

### Rules for action "v8_inspector_compress_protocol_json":
quiet_cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json = ACTION _var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json $@
cmd__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json = LD_LIBRARY_PATH=$(builddir)/lib.host:$(builddir)/lib.target:$$LD_LIBRARY_PATH; export LD_LIBRARY_PATH; cd $(srcdir)/.; mkdir -p $(obj)/gen; python tools/compress_json.py "$(obj)/gen/concatenated_protocol.json" "$(obj)/gen/v8_inspector_protocol_json.h"

$(obj)/gen/v8_inspector_protocol_json.h: obj := $(abs_obj)
$(obj)/gen/v8_inspector_protocol_json.h: builddir := $(abs_builddir)
$(obj)/gen/v8_inspector_protocol_json.h: TOOLSET := $(TOOLSET)
$(obj)/gen/v8_inspector_protocol_json.h: $(obj)/gen/concatenated_protocol.json FORCE_DO_CMD
	$(call do_cmd,_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json)

all_deps += $(obj)/gen/v8_inspector_protocol_json.h
action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json_outputs := $(obj)/gen/v8_inspector_protocol_json.h


### Generated for copy rule.
$(obj)/gen/node_protocol_config.json: TOOLSET := $(TOOLSET)
$(obj)/gen/node_protocol_config.json: $(srcdir)/src/inspector/node_protocol_config.json FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(obj)/gen/node_protocol_config.json
$(obj)/gen/node_protocol.pdl: TOOLSET := $(TOOLSET)
$(obj)/gen/node_protocol.pdl: $(srcdir)/src/inspector/node_protocol.pdl FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(obj)/gen/node_protocol.pdl
_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_copies = $(obj)/gen/node_protocol_config.json $(obj)/gen/node_protocol.pdl

DEFS_Debug := \
	'-DOPENSSL_NO_PINSHARED' \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="linux"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DNODE_OPENSSL_SYSTEM_CERT_PATH=""' \
	'-DHAVE_INSPECTOR=1' \
	'-D__POSIX__' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_HAVE_I18N_SUPPORT=1' \
	'-DNODE_HAVE_SMALL_ICU=1' \
	'-DHAVE_OPENSSL=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DUCONFIG_NO_REGULAR_EXPRESSIONS=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DNGHTTP2_STATICLIB' \
	'-DDEBUG' \
	'-D_DEBUG' \
	'-DV8_ENABLE_CHECKS'

# Flags passed to all source files.
CFLAGS_Debug := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Debug := \
	-I$(srcdir)/src \
	-I$(obj)/gen \
	-I$(obj)/gen/include \
	-I$(obj)/gen/src \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/zlib \
	-I$(srcdir)/deps/http_parser \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include \
	-I$(srcdir)/deps/nghttp2/lib/includes \
	-I$(srcdir)/deps/brotli/c/include \
	-I$(srcdir)/deps/openssl/openssl/include

DEFS_Release := \
	'-DOPENSSL_NO_PINSHARED' \
	'-DNODE_ARCH="x64"' \
	'-DNODE_PLATFORM="linux"' \
	'-DNODE_WANT_INTERNALS=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-DNODE_OPENSSL_SYSTEM_CERT_PATH=""' \
	'-DHAVE_INSPECTOR=1' \
	'-D__POSIX__' \
	'-DNODE_USE_V8_PLATFORM=1' \
	'-DNODE_HAVE_I18N_SUPPORT=1' \
	'-DNODE_HAVE_SMALL_ICU=1' \
	'-DHAVE_OPENSSL=1' \
	'-DUCONFIG_NO_SERVICE=1' \
	'-DUCONFIG_NO_REGULAR_EXPRESSIONS=1' \
	'-DU_ENABLE_DYLOAD=0' \
	'-DU_STATIC_IMPLEMENTATION=1' \
	'-DU_HAVE_STD_STRING=1' \
	'-DUCONFIG_NO_BREAK_ITERATION=0' \
	'-DHTTP_PARSER_STRICT=0' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_POSIX_C_SOURCE=200112' \
	'-DNGHTTP2_STATICLIB'

# Flags passed to all source files.
CFLAGS_Release := \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++1y

INCS_Release := \
	-I$(srcdir)/src \
	-I$(obj)/gen \
	-I$(obj)/gen/include \
	-I$(obj)/gen/src \
	-I$(srcdir)/deps/v8/include \
	-I$(srcdir)/deps/icu-small/source/i18n \
	-I$(srcdir)/deps/icu-small/source/common \
	-I$(srcdir)/deps/zlib \
	-I$(srcdir)/deps/http_parser \
	-I$(srcdir)/deps/cares/include \
	-I$(srcdir)/deps/uv/include \
	-I$(srcdir)/deps/nghttp2/lib/includes \
	-I$(srcdir)/deps/brotli/c/include \
	-I$(srcdir)/deps/openssl/openssl/include

OBJS := \
	$(obj).target/$(TARGET)/src/async_wrap.o \
	$(obj).target/$(TARGET)/src/bootstrapper.o \
	$(obj).target/$(TARGET)/src/callback_scope.o \
	$(obj).target/$(TARGET)/src/cares_wrap.o \
	$(obj).target/$(TARGET)/src/connection_wrap.o \
	$(obj).target/$(TARGET)/src/connect_wrap.o \
	$(obj).target/$(TARGET)/src/debug_utils.o \
	$(obj).target/$(TARGET)/src/env.o \
	$(obj).target/$(TARGET)/src/exceptions.o \
	$(obj).target/$(TARGET)/src/fs_event_wrap.o \
	$(obj).target/$(TARGET)/src/handle_wrap.o \
	$(obj).target/$(TARGET)/src/heap_utils.o \
	$(obj).target/$(TARGET)/src/js_stream.o \
	$(obj).target/$(TARGET)/src/module_wrap.o \
	$(obj).target/$(TARGET)/src/node.o \
	$(obj).target/$(TARGET)/src/node_api.o \
	$(obj).target/$(TARGET)/src/node_buffer.o \
	$(obj).target/$(TARGET)/src/node_config.o \
	$(obj).target/$(TARGET)/src/node_constants.o \
	$(obj).target/$(TARGET)/src/node_contextify.o \
	$(obj).target/$(TARGET)/src/node_domain.o \
	$(obj).target/$(TARGET)/src/node_encoding.o \
	$(obj).target/$(TARGET)/src/node_file.o \
	$(obj).target/$(TARGET)/src/node_http2.o \
	$(obj).target/$(TARGET)/src/node_http_parser.o \
	$(obj).target/$(TARGET)/src/node_messaging.o \
	$(obj).target/$(TARGET)/src/node_options.o \
	$(obj).target/$(TARGET)/src/node_os.o \
	$(obj).target/$(TARGET)/src/node_platform.o \
	$(obj).target/$(TARGET)/src/node_perf.o \
	$(obj).target/$(TARGET)/src/node_postmortem_metadata.o \
	$(obj).target/$(TARGET)/src/node_process.o \
	$(obj).target/$(TARGET)/src/node_serdes.o \
	$(obj).target/$(TARGET)/src/node_trace_events.o \
	$(obj).target/$(TARGET)/src/node_types.o \
	$(obj).target/$(TARGET)/src/node_url.o \
	$(obj).target/$(TARGET)/src/node_util.o \
	$(obj).target/$(TARGET)/src/node_v8.o \
	$(obj).target/$(TARGET)/src/node_stat_watcher.o \
	$(obj).target/$(TARGET)/src/node_watchdog.o \
	$(obj).target/$(TARGET)/src/node_worker.o \
	$(obj).target/$(TARGET)/src/node_zlib.o \
	$(obj).target/$(TARGET)/src/node_i18n.o \
	$(obj).target/$(TARGET)/src/pipe_wrap.o \
	$(obj).target/$(TARGET)/src/process_wrap.o \
	$(obj).target/$(TARGET)/src/sharedarraybuffer_metadata.o \
	$(obj).target/$(TARGET)/src/signal_wrap.o \
	$(obj).target/$(TARGET)/src/spawn_sync.o \
	$(obj).target/$(TARGET)/src/string_bytes.o \
	$(obj).target/$(TARGET)/src/string_decoder.o \
	$(obj).target/$(TARGET)/src/stream_base.o \
	$(obj).target/$(TARGET)/src/stream_pipe.o \
	$(obj).target/$(TARGET)/src/stream_wrap.o \
	$(obj).target/$(TARGET)/src/tcp_wrap.o \
	$(obj).target/$(TARGET)/src/timer_wrap.o \
	$(obj).target/$(TARGET)/src/tracing/agent.o \
	$(obj).target/$(TARGET)/src/tracing/node_trace_buffer.o \
	$(obj).target/$(TARGET)/src/tracing/node_trace_writer.o \
	$(obj).target/$(TARGET)/src/tracing/trace_event.o \
	$(obj).target/$(TARGET)/src/tracing/traced_value.o \
	$(obj).target/$(TARGET)/src/tty_wrap.o \
	$(obj).target/$(TARGET)/src/udp_wrap.o \
	$(obj).target/$(TARGET)/src/util.o \
	$(obj).target/$(TARGET)/src/uv.o \
	$(obj).target/$(TARGET)/src/node_code_cache_stub.o \
	$(obj).target/$(TARGET)/src/inspector_agent.o \
	$(obj).target/$(TARGET)/src/inspector_io.o \
	$(obj).target/$(TARGET)/src/inspector_js_api.o \
	$(obj).target/$(TARGET)/src/inspector_socket.o \
	$(obj).target/$(TARGET)/src/inspector_socket_server.o \
	$(obj).target/$(TARGET)/src/inspector/main_thread_interface.o \
	$(obj).target/$(TARGET)/src/inspector/node_string.o \
	$(obj).target/$(TARGET)/src/inspector/tracing_agent.o \
	$(obj).target/$(TARGET)/src/inspector/worker_agent.o \
	$(obj).target/$(TARGET)/src/inspector/worker_inspector.o \
	$(obj).target/$(TARGET)/src/node_crypto.o \
	$(obj).target/$(TARGET)/src/node_crypto_bio.o \
	$(obj).target/$(TARGET)/src/node_crypto_clienthello.o \
	$(obj).target/$(TARGET)/src/tls_wrap.o \
	$(obj).target/$(TARGET)/gen/node_javascript.o \
	$(obj).target/$(TARGET)/gen/src/node/inspector/protocol/Protocol.o \
	$(obj).target/$(TARGET)/gen/src/node/inspector/protocol/NodeWorker.o \
	$(obj).target/$(TARGET)/gen/src/node/inspector/protocol/NodeTracing.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/deps/v8/gypfiles/v8.stamp $(obj).target/tools/icu/icuuc.stamp $(builddir)/openssl-cli

# Make sure our actions/rules run before any of us.
$(OBJS): | $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_protocol_generated_sources_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json_outputs) $(_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_copies)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
# Build our special outputs first.
$(obj).target/libnode.a: | $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_protocol_generated_sources_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json_outputs) $(_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_copies)

# Preserve order dependency of special output on deps.
$(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_js2c_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_convert_node_protocol_to_json_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_node_protocol_generated_sources_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_concatenate_protocols_outputs) $(action__var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_v8_inspector_compress_protocol_json_outputs) $(_var_www_html_its_magento_node_v10_24_1_node_gyp_node_lib_target_copies): | $(obj).target/deps/v8/gypfiles/v8.stamp $(obj).target/tools/icu/icuuc.stamp $(builddir)/openssl-cli

LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,-z,relro \
	-Wl,-z,now

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-Wl,-z,relro \
	-Wl,-z,now

LIBS :=

$(obj).target/libnode.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/libnode.a: LIBS := $(LIBS)
$(obj).target/libnode.a: TOOLSET := $(TOOLSET)
$(obj).target/libnode.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink_thin)

all_deps += $(obj).target/libnode.a
# Add target alias
.PHONY: node_lib
node_lib: $(obj).target/libnode.a

# Add target alias to "all" target.
.PHONY: all
all: node_lib

