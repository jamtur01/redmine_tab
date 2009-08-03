# Redmine - project management software
# Copyright (C) 2006-2009  Jean-Philippe Lang
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require 'redmine'

RAILS_DEFAULT_LOGGER.info 'Starting Tab plugin 0.3.0 for Redmine'

Redmine::Plugin.register :redmine_tab do
  name 'Tab Plugin'
  author 'James Turnbull'
  description 'A plugin which adds Redmine tabs to embed content from an iframe on a per-project and system-wide base.'
  version '0.3.0'
  
  settings :default => {
    'tab_text' => '',
    'tab_name' => 'Tab Name',
    'system_tab_text' => '',
    'system_tab_name' => 'System Tab Name'

  }, :partial => 'settings/redminetab_settings'

  # This plugin adds a project module
  # It can be enabled/disabled at project level (Project settings -> Modules)
  project_module :tab do
    # This permission has to be explicitly given
    # It will be listed on the permissions screen
    permission :view_tab, {:tab => :show}
  end

  # Translate or return the setting_name directly
  string_or_translate = lambda {|setting_name|
    string = Setting.plugin_redmine_tab[setting_name]
    if !string.blank? && string.match(/\A:/) # uses symbol syntax, :string
      string.gsub!(':','')
      string = GLoc.l(string.to_sym) if Object.const_defined?('GLoc') # Rails 2.1.x
      string = I18n.t(string.to_sym) if Object.const_defined?('I18n') # Rails 2.2.x
    end
    string
  }
  
  # A new item is added to the project menu
  menu(:project_menu,
       :tab,
       { :controller => 'tab', :action => 'show' },
       :caption => Proc.new { string_or_translate.call('tab_name') },
       :if => Proc.new { !Setting.plugin_redmine_tab['tab_name'].blank? })

  # A new item is added to the top menu
  menu(:top_menu,
       :tab,
       { :controller => 'tab', :action => 'system_show' },
       :caption => Proc.new { string_or_translate.call('system_tab_name') },
       :if => Proc.new { !Setting.plugin_redmine_tab['system_tab_name'].blank? })
end
