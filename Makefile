perf_report:
	rebar3 compile && erl -pa _build/default/lib/*/ebin -noshell -run hyper perf_report -s init stop

estimate_report:
	rebar3 compile && erl -pa _build/default/lib/*/ebin ebin -noshell -run hyper estimate_report -s init stop
	echo bin/plot.R
