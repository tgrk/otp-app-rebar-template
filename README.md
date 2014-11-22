#Rebar template for Erlang OTP App

How about massive-octo-ninja template for your Erlang OTP applications?

Features:
* operations scripts
* typespec for generated code
* rebar configuration
* `lagger` logging
* `eunit_formatters` for coloring eunit output
* xref checks
* dialyzer `warn_missing_spec` and `debug_info`

Install template into your home directory:
```bash
$ cd ~/.rebar/templates
$ git clone git@github.com:tgrk/otp-app-rebar-template.git
```

To use template run following command:
```bash
$ rebar create template=otp-app-rebar-template short=fb full=foobar \
    author="Foo Bar <foo@bar.com>" description="Foobar project"
```