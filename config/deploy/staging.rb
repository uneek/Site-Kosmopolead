#	Application Settings
###########################################################
# ex : kosmopolead-cms
set :application_fullname, "kosmopolead"
# ex : Application short name is the directory name : cms (Located in /var/www/products/prod/cms)
set :application_shortname, "kosmopolead"
# ex : dev, beta or prod deploy
set :application_version, "dev"
# Passenger Rails env
set :rails_env, "staging"

#	Repository Settings
#########################################################
# Branch
set :branch, "master"

eval IO.read(File.join('config', 'deploy', 'config.rb'))