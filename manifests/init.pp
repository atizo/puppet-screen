#
# screen module
#
# Copyright 2008, admin(at)immerda.ch
# Copyright 2008, Puzzle ITC GmbH
# Copyright 2010, Atizo AG
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi simon.josi+puppet(at)atizo.com
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

class screen {
  case $operatingsystem {
    openbsd: { include screen::openbsd }
    gentoo:  { include screen::gentoo }
    default: { include screen::base }
  }
  screen::screenrc{'root_screenrc': }
}
