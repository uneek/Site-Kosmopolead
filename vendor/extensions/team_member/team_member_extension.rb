# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class TeamMemberExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/team_member"
  
  # extension_config do |config|
  #   config.gem 'some-awesome-gem
  #   config.after_initialize do
  #     run_something
  #   end
  # end

  # See your config/routes.rb file in this extension to define custom routes
  
  def activate
       tab 'Content' do
       add_item "Gestion de l'équipe", "/admin/members", :after => "Pages"
     end
     Page.send :include, TeamMemberTags
  end
end
