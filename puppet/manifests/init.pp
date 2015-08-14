Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

import "system-update.pp"
import "python.pp"
import "mysql.pp"

include chrome
include mysql
include pip
include system-update
include system-packages
