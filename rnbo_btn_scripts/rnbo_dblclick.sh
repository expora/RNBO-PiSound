#!/bin/sh

# pisound-btn daemon for the Pisound button.
# Copyright (C) 2017  Vilniaus Blokas UAB, https://blokas.io/pisound
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; version 2 of the
# License.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

# RNBO Pisound Button Mapper
# --------------------------
# Here we're using liblo to send OSC to RNBO from 
# the command line inside this shell script
# in response to this type of button press
#
# For example:
# oscsend localhost 7777 /sample/address iTfs 1 3.14 hello
# 
# We can also use bash scripting to flash the LED

. /usr/local/pisound/scripts/common/common.sh
oscsend localhost 1234 /rnbo/inst/0/messages/in/pisound_click2 f 1  
log "Double Click"

for i in $(seq 1 2); do
    flash_leds 1
    sleep 0.1
done            
