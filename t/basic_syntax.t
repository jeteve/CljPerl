#! perl

use strict;
use warnings;

use Test::More;

use Language::LispPerl;

#use Log::Any::Adapter qw/Stderr/;

my $test = Language::LispPerl::Evaler->new();

ok($test->load("core"), 'load core');

ok($test->load("t/basic_syntax.clp"), 'basic syntax');

ok($test->eval("(def abc \"abc\")"), 'eval');

done_testing();
