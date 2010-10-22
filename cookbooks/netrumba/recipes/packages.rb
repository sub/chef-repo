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

#package 'alsautils'
package 'ant'
#package 'apache2-mpm-prefork'
package 'aptitude'
package 'apturl'
package 'b43-fwcutter'
package 'banshee'
package 'bash-completion'
package 'build-essential'
#package 'community-themes'
package 'dkms'
#package 'easytag'
#package 'ejabberd'
package 'emacs-snapshot'
package 'emesene'
package 'erlang'
package 'espeak'
package 'etckeeper'
package 'filezilla'
package 'firefox-4.0'
package 'firefox-gnome-support'
package 'flashplugin-installer'
#package 'gimp'
package 'git-core'
package 'gitg'
package 'gitk'
package 'gnochm'
package 'gnome-bluetooth'
package 'gnucash'
package 'gnupg'
package 'google-talkplugin'
package 'gparted'
package 'hddtemp'
package 'hdparm'
package 'htop'
package 'linphone'
package 'lm-sensors'
package 'medibuntu-keyring'
package 'meld'
package 'mercurial'
package 'mplayer-nogui'
package 'mplayer-skins'
package 'mysql-common'
package 'mysql-client-5.0'
#package 'nautilus-dropbox'
package 'nautilus-flickr-uploader'
#package 'network-manager-pptp'
#package 'network-manager-pptp-gnome'
package 'nmap'
package 'openoffice.org-base-core'
package 'openoffice.org-gnome'
package 'openssh-client'
package 'openssh-server'
package 'parcellite'
package 'php5-cli'
package 'picasa'
package 'powertop'
#package 'pppconfig'
#package 'pppoeconf'
#package 'pptp-linux'
package 'rhythmbox-plugin-albumartsearch'
package 'samba-common'
#package 'screen'
package 'shotwell'
package 'skype'
package 'smbclient'
pacakge 'smbfs'
#package 'sopcast-player'
package 'sqlite3'
#package 'sshfs'
package 'sshmenu'
package 'sshmenu-gnome'
package 'subversion'
package 'telnet'
package 'tex-common'
package 'texlive'
package 'texlive-base'
package 'texmaker'
package 'traceroute'
#package 'ubuntuwintv'
package 'unrar-free'
package 'vim'
package 'virt-manager'
package 'virt-viewer'
package 'vlc'
package 'w32codecs'
package 'wget'
#package 'wine'
#package 'wpasupplicant'
package 'xchat'
package 'zip'

CHROMIUM-BROWSER = ['chromium-browser',
                    'chromium-browser-inspector',
                    'chromium-codecs-ffmpeg',
                    'chromium-codecs-ffmpeg-nonfree'
                   ].each {|this| package this}

PIDGIN = ['pidgin',
          'pidgin-extprefs',
          'pidgin-ppa'
         ].each {|this| package this}

POULSBO = ['poulsbo-driver-2d',
           'poulsbo-driver-3d',
           'poulsbo-config'
          ].each {|file| package file}

RUBY = ['ruby', 'ri', 'rdoc', 'ruby1.8-dev', 'irb1.8', 'rdoc1.8', 'ri1.8', 'ruby1.8', 'irb', 'libopenssl-ruby', 'libopenssl-ruby1.8'].each {|this| package this}

bash 'install-rubygems' do
  code <<-EOC
    user "root"
      cwd "/tmp"
      wget http://production.cf.rubygems.org/rubygems/rubygems-1.3.7.tgz
      tar xvzf rubygems-1.3.7.tgz
      cd rubygems-1.3.7
      ruby setup.rb
      ln -s /usr/bin/gem1.8 /usr/local/bin/gem
      ln -s /usr/bin/ruby1.8 /usr/local/bin/ruby
      ln -s /usr/bin/rdoc1.8 /usr/local/bin/rdoc
      ln -s /usr/bin/ri1.8 /usr/local/bin/ri
      ln -s /usr/bin/irb1.8 /usr/local/bin/irb
      gem install capistrano chef cucumber gemcutter git jeweler jsc json json_pure mongo mongrel rails rake sinatra slideshow sqlite3-ruby xmpp4r --no-rdoc --no-ri
      gem install slideshow -v=0.6.1 --no-ri --no-rdoc
  EOC
end
