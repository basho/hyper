.PHONY: deps test

all: deps compile

compile:
		./rebar compile

deps:
		./rebar get-deps

clean:
		./rebar clean

doc: all
		./rebar doc

perf_report:
		./rebar -C rebar-test.config get compile
		erl -pa deps/*/ebin ebin -noshell -run hyper perf_report -s init stop

estimate_report:
		./rebar -C rebar-test.config get compile
		erl -pa deps/*/ebin ebin -noshell -run hyper estimate_report -s init stop
		bin/plot.R

include tools.mk
