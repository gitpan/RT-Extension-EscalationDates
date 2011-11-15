% RT-Extension-EscalationDates - Set start and due time automatically when creating a ticket


This RT Extension sets start and due time when creating a ticket via the web interface. It provides handling business hours defined in RT site configuration file.


# Installation

Before you can install this RT Extension you must install the perl module `Date::Manip` first. The easiest way is to use CPAN:

~~~~~~~ {.bash}
cpan update
cpan -i Date::Manip
~~~~~~~

To install this extension, run the following commands:

~~~~~~~ {.bash}
perl Makefile.PL
make
make test
make install
~~~~~~~


# Configuration

To make this extension active register it to in RT site configuration file located in `RT_HOME/etc/RT_SiteConfig.pm` where `RT_HOME` is the path to your RT installation.

~~~~~~~ {.perl}
Set(@Plugins,qw(RT::Extension::EscalationDates));
~~~~~~~

It's very important that you already configured a custom field with your priorities. After this step you must add this field to your configuration:

~~~~~~~ {.perl}
Set($PriorityField, 'Object-RT::Ticket--CustomField-1-Values');
~~~~~~~

In this example the first created custom field is used.

Also you must define several priorities and relative dates for escalations:

~~~~~~~ {.perl}
Set(%EscalateTicketsByPriority, ( 
    'A' => 'in 2 business hours',
    'B' => 'in 22 business hours',
    'C' => 'in 70 business hours',
    'D' => 'in 468 business hours'
));
~~~~~~~

Additionally you must define a default priority used when creating a ticket:

~~~~~~~ {.perl}
Set($DefaultPriority, 'C');
~~~~~~~

Use only already configured priorities from `%EscalateTicketsByPriority`, for example '`C`'.

To overwrite `Date::Manip`'s default configuration you may set the following:

~~~~~~~ {.perl}
Set(%DateManipConfig, (
    'WorkDayBeg', '9:00',
    'WorkDayEnd', '17:00', 
    #'WorkDay24Hr', '0',
    #'WorkWeekBeg', '1',
    #'WorkWeekEnd', '7'
));
~~~~~~~

You can find more information about the configurable parameters under <http://search.cpan.org/~sbeck/Date-Manip-6.25/lib/Date/Manip/Config.pod#BUSINESS_CONFIGURATION_VARIABLES>.

After all your new configuration will take effect after restarting your RT environment:

~~~~~~~ {.bash}
rm -rf RT_HOME/var/mason_data/obj/* && service apache2 restart
~~~~~~~

This is an example for deleting the mason cache and restarting the Apache HTTP web server on a Debian based operating system.


# Author

Benjamin Heisig, <bheisig@synetics.de>


# Support and Documentation

You can find documentation for this module with the `perldoc` command.

~~~~~~~ {.bash}
perldoc RT::Extension::EscalationDates
~~~~~~~


# Bugs

Please report any bugs or feature requests to the [author](#author).


# Acknowledgements

Special thanks to the *synetics GmbH*, <http://i-doit.org/> for initiating this
project!


# Copyright and License

Copyright (C) 2011 Benjamin Heisig, <bheisig@synetics.de>

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

Request Tracker (RT) is Copyright Best Practical Solutions, LLC.

