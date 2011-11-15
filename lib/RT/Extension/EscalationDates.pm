package RT::Extension::EscalationDates;

use warnings;
use strict;


=head1 NAME

RT::Extension::EscalationDates - Set start and due time automatically when
creating a ticket


=head1 VERSION

Version 0.1

=cut

our $VERSION = '0.1';


=head1 SYNOPSIS

This RT Extension sets start and due time when creating a ticket via the web
interface. It provides handling business hours defined in RT site configuration file.


=head1 AUTHOR

Benjamin Heisig, C<< <bheisig at synetics.de> >>


=head1 SUPPORT AND DOCUMENTATION

You can find documentation for this module with the perldoc command.

    perldoc RT::Extension::EscalationDates


=head1 BUGS

Please report any bugs or feature requests to the AUTHOR.


=head1 ACKNOWLEDGEMENTS

Special thanks to the synetics GmbH, C<< <http://i-doit.org/> >> for initiating this
project!


=head1 COPYRIGHT & LICENSE

Copyright 2011 Benjamin Heisig C<< <bheisig@synetics.de> >>

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

Request Tracker (RT) is Copyright Best Practical Solutions, LLC.


=cut

1; # End of RT::Extension::EscalationDates
