#!perl

use strict;
use warnings;

use Test::FailWarnings -allow_deps => 1;
use Test::More;
use Test::Perl::Critic qw( all_critic_ok );
use File::Spec ();

Test::Perl::Critic->import(
    '-single-policy' => 'ValuesAndExpressions::PreventSQLInjection' );

my $testfile1 = File::Spec->catfile( 't', 'files', 'test10.pl' );
my $testfile2 = File::Spec->catfile( 't', 'files', 'test11.pl' );

all_critic_ok( $testfile1, $testfile2 );
