#!/usr/bin/perl
#
# Net::Twitter::Lite - OAuth desktop app example
#
use warnings;
use strict;

use Net::Twitter::Lite;
use File::Spec;
use Storable;
use Data::Dumper;

# You can replace with final tokens
my %consumer_tokens = (
    consumer_key    => 'MIwGJbrAAMCz6kG0FkLHg',
    consumer_secret => 'P2Cy28egN5ieHOpjp4L3aqQoe2EuzN30hRkAtqP2p0',
);

# $datafile = oauth_desktop.dat
my (undef, undef, $datafile) = File::Spec->splitpath($0);
$datafile =~ s/\..*/.dat/;

my $nt = Net::Twitter::Lite->new(%consumer_tokens);
my $access_tokens = eval { retrieve($datafile) } || [];

if ( @$access_tokens ) {
    $nt->access_token($access_tokens->[0]);
    $nt->access_token_secret($access_tokens->[1]);
}
else {
    my $auth_url = $nt->get_authorization_url;
    print " Authorize this application at: $auth_url\nThen, enter the PIN# provided to continue: ";

    my $pin = <STDIN>; # wait for input
    chomp $pin;

    # request_access_token stores the tokens in $nt AND returns them
    my @access_tokens = $nt->request_access_token(verifier => $pin);

    # save the access tokens
    store \@access_tokens, $datafile;
}

#print notification
$nt->update( $ARGV[0] );
exit( 0 );