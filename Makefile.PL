use inc::Module::Install;

RTx('RT-Extension-EscalationDates');
license('perl');
author('Benjamin Heisig <bheisig@synetics.de>');
version('0.1');
abstract_from('lib/RT/Extension/EscalationDates.pm');
repository 'git://git.benjaminheisig.net/rt-extension-escalationdates.git';

sign;
&WriteAll;

