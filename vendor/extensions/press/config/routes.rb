ActionController::Routing::Routes.draw do |map|
   map.namespace :admin, :member => { :remove => :get } do |admin|
     admin.resources :press_files
     admin.resources :press_documents
     admin.resources :press_visuals
   end

   map.resources :press_files, :member => {:download_visual => :get, :download_document => :get}
end