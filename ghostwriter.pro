################################################################################
#
# Copyright (C) 2014-2018 wereturtle
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################

lessThan(QT_MAJOR_VERSION, 5) {
	error("Ghostwriter requires Qt 5.4 or greater")
}
equals(QT_MAJOR_VERSION, 5):lessThan(QT_MINOR_VERSION, 4) {
	error("FocusWriter requires Qt 5.4 or greater")
}

TEMPLATE = subdirs


# build markdown parsers.
SUBDIRS += \
    libraries/sundown \
    libraries/hoedown

# build hunspell on windows.
win32:SUBDIRS += libraries/hunspell

# build ghostwriter
SUBDIRS += ghostwriter

CONFIG += ordered
