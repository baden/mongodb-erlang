# See LICENSE for licensing information.

PROJECT = mongodb

# Options.

ERLC_OPTS ?= -Werror +debug_info

# Dependencies error in erlang.mk?
#CT_OPTS += -pa test -erl_args -config test/test.config -pa deps/mongodb/deps/*/ebin
#PLT_APPS = crypto public_key ssl

# Dependencies.

DEPS = bson poolboy
dep_bson = git https://github.com/baden/bson-erlang.git v0.1.3-patch
dep_poolboy = git https://github.com/ceshannon/poolboy.git master

# TEST_DEPS = ct_helper meck
# TEST_DEPS = ct_helper
# dep_ct_helper = git https://github.com/extend/ct_helper.git master
# dep_meck = git git://github.com/eproxus/meck.git 0.8.2

# Standard targets.

# TODO:
# {edoc_opts, [{index_columns, 1}, {sort_functions, false}, {preprocess, true}]}.

include erlang.mk

# Also dialyze the tests.

# DIALYZER_OPTS += --src -r test
