RedmineApp::Application.routes.draw do  
  match 'tab/show', :to => 'tab#show'
  match 'tab/show', :to => 'tab#system_show'
end
