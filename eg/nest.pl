use Crack::Util;

my $nest = sub {
   my $env = shift;

   # tea
   #    create
   #    delete
   #    [list (??)]
   # contact
   #    create
   #    delete

   print {$env->{STDOUT}} "hello world!\n";

   return 0;
};

Crack::Util::run($nest);

