class Tab
  
  def self.get_tab

    tab_text = Setting.plugin_redmine_tab['tab_text'].to_i        
    tab_text = tab_text.value if tab_text    

  end
  
end
