# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023  Alexey Gladkov <gladkov.alexey@gmail.com>

package LIBC_XS;

use vars qw($VERSION);
$VERSION = '1.0';

require Exporter;
require DynaLoader;

@ISA = qw( Exporter DynaLoader );
@EXPORT = qw( initgroups fchmod fchown vhangup );

bootstrap LIBC_XS;

1;
