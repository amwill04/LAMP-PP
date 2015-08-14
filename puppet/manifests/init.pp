Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

import "system-update.pp"
import "python.pp"

include pip
include system-update
