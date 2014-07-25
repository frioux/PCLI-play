package Crack::Util;

sub run {
   my $app = shift;

   exit($app->({
      ARGV   => \@ARGV,
      STDIN  => \*STDIN,
      STDOUT => \*STDOUT,
      STDERR => \*STDERR,
      (map { "ENV_" . uc, $ENV{$_} } keys %ENV),
      ARG0 => $0,

      vars   => \%ENV,
   }) || 0);
}

1;
