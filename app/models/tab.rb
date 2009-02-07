# tab.rb
# 
# Copyright (C) 2008-2009  James Turnbull <james@lovedthanlost.net>
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.

class Tab
  
  # retrieve the value from the configured project custom field
  def self.get_tab_text(project)
       tab_text = project.custom_values.detect {|v| v.custom_field_id == Setting.plugin_redmine_tab['tab_text'].to_i}
       tab_text = tab_text.value if tab_text
  end
end
# tab.rb
# 
# Copyright (C) 2008-2009  James Turnbull <james@lovedthanlost.net>
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.

class Tab
  
  # retrieve the value from the configured project custom field
  def self.get_tab_text(project)
       tab_text = project.custom_values.detect {|v| v.custom_field_id == Setting.plugin_redmine_tab['tab_text'].to_i}
       tab_text = tab_text.value if tab_text
  end
end
# tab.rb
# 
# Copyright (C) 2008-2009  James Turnbull <james@lovedthanlost.net>
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
# MA 02110-1301, USA.

class Tab
  
  # retrieve the value from the configured project custom field
  def self.get_tab_text(project)
       tab_text = project.custom_values.detect {|v| v.custom_field_id == Setting.plugin_redmine_tab['tab_text'].to_i}
       tab_text = tab_text.value if tab_text
  end
end
