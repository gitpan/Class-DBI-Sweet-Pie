package DBBase;
use strict;
use base qw/Class::DBI::Sweet/;

use File::Temp qw/tempfile/;
my (undef, $DB) = tempfile();
my @DSN = ("dbi:SQLite:dbname=$DB", '', '', { AutoCommit => 1 });
END { unlink $DB if -e $DB }
__PACKAGE__->set_db(Main => @DSN);

use Class::DBI::Sweet::Pie;

1;
__END__
