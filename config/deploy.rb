set :application, "lunch_filter"
set :repository,  "git@github.com:joevandyk/lunch-filter.git"
set :scm, :git
set :ssh_options, { :forward_agent => true }
set :deploy_to, "/sites/#{application}"
set :user, 'joe'

set :use_sudo, false
role :app, "pinkpucker.net"
role :web, "pinkpucker.net"
role :db,  "pinkpucker.net", :primary => true

namespace :deploy do
    task :start, :roles => :app do
      invoke_command "/usr/sbin/svcadm enable lunch_filter"
    end

    task :stop, :roles => :app do
      invoke_command "/usr/sbin/svcadm disable lunch_filter"
    end

    task :restart, :roles => :app do
      invoke_command "/usr/sbin/svcadm restart lunch_filter"
    end

    task :after_update_code, :roles => [:app] do
      run "ln -nfs #{release_path}/config/database.yml.live #{ release_path }/config/database.yml"
    end
end
