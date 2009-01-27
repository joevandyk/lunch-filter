set :application, "lunchfilter"
set :repository,  "git@github.com:joevandyk/lunch-filter.git"
set :scm, :git
set :ssh_options, { :forward_agent => true }
set :deploy_to, "/data/#{application}"
set :user, 'monkey'

set :use_sudo, false
role :app, "lunchfilter.com"
role :web, "lunchfilter.com"
role :db,  "lunchfilter.com", :primary => true

namespace :deploy do
    task :restart, :roles => :app do
      invoke_command "touch #{release_path}/tmp/restart.txt"
    end

    task :after_update_code, :roles => [:app] do
      run "ln -nfs #{release_path}/config/database.yml.live #{ release_path }/config/database.yml"
      run "ln -nfs #{shared_path}/uploads #{ release_path }/public/uploads"
    end
end
