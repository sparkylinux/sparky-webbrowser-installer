#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/sparky-webbrowser*
	rm -rf /usr/lib/sparky-webbrowser
	rm -f /usr/lib/sparky-aptus/inst/sparky-webbrowser*
	rm -f /usr/share/applications/sparky-webbrowser*
	rm -f /usr/share/menu/sparky-webbrowser*
	rm -rf /usr/share/sparky/sparky-web
else
	cp bin/* /usr/bin/
	if [ ! -d /usr/lib/sparky-webbrowser ]; then
		mkdir -p /usr/lib/sparky-webbrowser
	fi
	cp sparky-webbrowser/* /usr/lib/sparky-webbrowser/
	if [ ! -d /usr/lib/sparky-aptus/inst ]; then
		mkdir -p /usr/lib/sparky-aptus/inst
	fi
	cp inst/* /usr/lib/sparky-aptus/inst/
	cp share/sparky-webbrowser-installer.desktop /usr/share/aplications/
	cp share/sparky-webbrowser-installer /usr/share/menu/
	if [ ! -d /usr/share/sparky/sparky-web ]; then
		mkdir -p /usr/share/sparky/sparky-web
	fi
	cp sparky-web/* /usr/share/sparky/sparky-web/
fi
