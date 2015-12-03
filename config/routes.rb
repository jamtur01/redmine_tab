RedmineApp::Application.routes.draw do  
  get 'tab/show', :to => 'tab#show'
  get 'tab/system_show', :to => 'tab#system_show'
end
