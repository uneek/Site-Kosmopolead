ActionController::Routing::Routes.draw do |map|
  # map.namespace :admin, :member => { :remove => :get } do |admin|
  #   admin.resources :press
  # end
    map.connect '/press/download_visual', :controller => '/press_file', :action => 'download_visual'
    map.connect '/press/download_document', :controller => '/press_file', :action => 'download_document'
end