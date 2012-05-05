ActionController::Routing::Routes.draw do |map|
  map.connect 'tab/show', :controller => 'tab', :action => 'show'
  map.connect 'tab/show', :controller => 'tab', :action => 'system_show'
end
