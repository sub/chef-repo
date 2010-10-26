# -*- coding: utf-8 -*-
#
# Cookbook Name:: netrumba
# Recipe:: packages
#
# Copyright 2010, Alca Società Cooperativa
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

## General Packages
package 'etckeeper'
package 'ant'
#package 'apache2-mpm-prefork'
package 'aptitude'
package 'banshee'
package 'build-essential'
package 'chmsee'
package 'emacs-snapshot'
package 'emesene'
package 'erlang'
package 'espeak'
package 'filezilla'
package 'firefox-4.0'
package 'flashplugin-installer'
#package 'gimp'
package 'git-core'
package 'gitg'
package 'gitk'
#package 'gnome-bluetooth'
package 'gnucash'
package 'google-talkplugin'
package 'gparted'
package 'hddtemp'
package 'hdparm'
package 'htop'
package 'linphone'
package 'meld'
package 'mercurial'
package 'mysql-common'
package 'mysql-client'
#package 'nautilus-dropbox'
#package 'nautilus-flickr-uploader'
package 'nmap'
package 'openssh-client'
package 'openssh-server'
package 'parcellite'
package 'php5-cli'
package 'picasa'
package 'powertop'
package 'rhythmbox-plugin-albumartsearch'
package 'samba-common'
#package 'skype'
package 'smbclient'
package 'smbfs'
package 'sqlite3'
package 'sshmenu'
package 'sshmenu-gnome'
package 'subversion'
package 'tex-common'
package 'texlive'
package 'texlive-base'
package 'texmaker'
#package 'traceroute'
package 'unrar-free'
package 'vim'
package 'virt-manager'
package 'virt-viewer'
package 'vlc'
package 'w32codecs'
package 'xchat'

CHROMIUM_BROWSER = ['chromium-browser',
                    'chromium-browser-inspector',
                    'chromium-codecs-ffmpeg',
                    'chromium-codecs-ffmpeg-nonfree'
                   ].each {|this| package this}

POULSBO = ['poulsbo-driver-2d',
           'poulsbo-driver-3d',
           'poulsbo-config'
          ].each {|file| package file}

bash 'install-rubygems' do
  code <<-EOC
    user "root"
      gem install capistrano chef cucumber gemcutter git jeweler jsc json json_pure mongo mongrel rails rake sinatra slideshow sqlite3-ruby xmpp4r --no-ri --no-rdoc
      gem install slideshow -v=0.6.1 --no-ri --no-rdoc
  EOC
end

## EXTRA PACKAGES
#package 'easytag'
#package 'ejabberd'
#package 'pppconfig'
#package 'pppoeconf'
#package 'screen'
#package 'sopcast-player'
#package 'sshfs
#package 'ubuntuwintv''
#package 'wine'

## NO-MORE

#package 'b43-fwcutter'

#VPN_CONFIG = ['network-manager-pptp',
#		'network-manager-pptp-gnome',
#		'pptp-linux'].each {|file| package file}
