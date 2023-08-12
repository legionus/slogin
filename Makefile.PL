#!perl -w
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2023  Alexey Gladkov <gladkov.alexey@gmail.com>

use ExtUtils::MakeMaker;

WriteMakefile(
	NAME            => 'LIBC_XS',
	VERSION_FROM    => 'LIBC_XS.pm',
	INST_BIN        => 'bin',
);
