# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class PressExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/press"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
    SiteController.send :include, SiteControllerExtension
    tab 'Content' do
      add_item "Press", "/admin/press_files", :after => "Pages"
    end
    Page.send :include, PressTags
  end
end
