set :application, "ghint"
set :repository,  "git://github.com/jarretraim/ghint.git"
set :scm, :git

set :use_sudo, false
set :user, "ghint"
set :scm_username, "jarretraim"
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "ghint_id_rsa")]

set :deploy_to, "/opt/ghint"
server "github-integration.inova.dfw1.us.ci.rackspace.net", :app, :web, :db, :primary => true

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end