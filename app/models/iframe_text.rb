class Tab
  
  def self.get_tab(project)

    tab_text = project.custom_values.detect {|v| v.custom_field_id == Setting.plugin_redmine_tab['tab_text'].to_i}        
    tab_text = tab_text.value if tab_text    

    tab_name = project.custom_values.detect {|v| v.custom_field_id == Setting.plugin_redmine_tab['tab_name'].to_i}
    tab_name = tab_name.value if tab_name

  end
  
end
