#!/usr/bin/perl
#

use Module::CoreList;

print Module::CoreList->find_modules(qr/(.*?)/);
