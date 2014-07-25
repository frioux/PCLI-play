use Crack::Util;

Crack::Util::run(sub {
   my ($env) = @_;

   print {$env->{STDOUT}} "hello world!\n";

   0
});

