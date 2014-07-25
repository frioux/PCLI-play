use Crack::Util;

Crack::Util::run(sub {
   my $env = shift;

   my $stdin = $env->{STDIN};

   while (my $line = <$stdin>) {
      print {$env->{STDOUT}} $line;
   }

   return 0;
});
