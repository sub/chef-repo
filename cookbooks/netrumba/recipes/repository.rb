#
# Cookbook Name:: netrumba
# Recipe:: repository
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

#YORBA=shotwell
bash 'add-third-party-ppa-repo' do
  user "root"
    code <<-EOC
      add-apt-repository ppa:banshee-team/banshee-daily
      add-apt-repository ppa:yorba/ppa
      add-apt-repository ppa:zedtux/rhythmbox-albumartsearch
      add-apt-repository ppa:gma500/ppa
      add-apt-repository ppa:gma500/fix
    EOC
end

cookbook_file '/etc/apt/sources.list.d/google-talkplugin.list' do
   source 'google-talkplugin.list'
end

cookbook_file '/etc/apt/sources.list.d/medibuntu.list' do
   source 'medibuntu.list'
 end
