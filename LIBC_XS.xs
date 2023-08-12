// SPDX-License-Identifier: GPL-2.0-or-later
// Copyright (C) 2023  Alexey Gladkov <gladkov.alexey@gmail.com>

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <sys/types.h>

#include <unistd.h>
#include <grp.h>

MODULE = LIBC_XS	PACKAGE = LIBC_XS	PREFIX = libc_
PROTOTYPES: ENABLE

int
libc_fchown(fd, owner, group)
	int fd
	uid_t owner
	gid_t group
CODE:
	RETVAL = fchown(fd, owner, group) == 0;
OUTPUT:
	RETVAL

int
libc_fchmod(fd, mode)
	int fd
	mode_t mode
CODE:
	RETVAL = fchmod(fd, mode) == 0;
OUTPUT:
	RETVAL

int
libc_initgroups(user, group)
	char *user
	gid_t group
CODE:
	RETVAL = initgroups(user, group) == 0;
OUTPUT:
	RETVAL

int
libc_vhangup()
CODE:
	RETVAL = vhangup() == 0;
OUTPUT:
	RETVAL
