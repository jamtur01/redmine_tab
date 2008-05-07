class IframeText
  
  def self.get_iframe_text(project)
    # Find all of the projects that have enabled the "ticket emailer" plugin
    iframe_text = project.custom_values.detect {|v| v.custom_field_id == Setting.plugin_redmine_tab['iframe_text'].to_i}        
    iframe_text = iframe_text.value if iframe_text    
    
  end
  
end
