# Processing Capistrano Tasks for kosmopolead
# 16/05/10
###########################################################
#	General Capistrano Settings
############################################################
default_run_options[:pty] = true
set :use_sudo, false
set :keep_releases, 20
set :runner, "deployer"
set :spinner, false

# Repository Type
#set :deploy_via, :remote_cache
set :scm, "git"
#set :git_enable_submodules, true
# Source repository
set :repository,  "git@github.com:uneek/Site-Kosmopolead.git"

#	SSH Settings
#############################################################
# ex : prod-ssh.uneek.eu
set :ssh_server_target, "#{application_version}-ssh.uneek.eu"
set :user, "deployer"
set :domain, "#{ssh_server_target}"
set :port, "24000"

#	Deploy Settings
###########################################################
# Define Target domaine for each roles
role :web, "#{ssh_server_target}"
role :app, "#{ssh_server_target}"
role :db,  "#{ssh_server_target}", :primary => true
# ex : /var/www/products/prod/cms
set :deploy_to, "/var/www/products/#{application_version}/#{application_shortname}"
# ex : /var/www/products/prod/cms/shared
set :shared_path, "/var/www/products/#{application_version}/#{application_shortname}/shared"

# Passenger Namespace
# Used to restart Passenger application
namespace :passenger do
	desc "Restart Application"
	task :restart, :roles => :app do
		run "touch #{current_path}/tmp/restart.txt"
	end
end

# Deploy Namespace
# Used to create symlink and restart passenger
namespace :deploy do
	desc "Restart the Passenger system."
	task :restart, :roles => :app do
		# Create symlinks
		###############################################################
		## database
		run "ln -sf #{shared_path}/config/database.yml #{current_path}/config/database.yml"

		## FileAttachments 
		run "ln -sf #{shared_path}/system #{current_path}/public/system"
    run "ln -sf #{shared_path}/uploads #{current_path}/public/uploads"


    ## Logs
		run "ln -sf #{shared_path}/log #{current_path}/"

		###############################################################
		
		# DB Migrate
		run "cd #{current_path}; rake db:migrate RAILS_ENV=#{rails_env}"
    run "cd #{current_path}; rake db:migrate:extensions RAILS_ENV=#{rails_env}"


    #Thinking Sphinx
    run "cd #{current_path}; rake ts:stop RAILS_ENV=#{rails_env}"
    run "cd #{current_path}; rake ts:index RAILS_ENV=#{rails_env}"
    run "cd #{current_path}; rake ts:start RAILS_ENV=#{rails_env}"



    if rails_env.eql?("staging")
      robot = ERB.new <<-EOF
                          User-agent: *
                          Disallow: /
                      EOF

      put robot.result, "#{current_path}/public/robots.txt"
    end

		
		# Call Passenger restart task
		passenger.restart
		
		# Cleanup
		cleanup
	end
end


