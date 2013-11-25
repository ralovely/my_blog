set :application, 'my_blog'
set :repo_url, 'https://github.com/ralovely/my_blog.git'

set :deploy_to, '/home/ubuntu/apps/my_blog'
set :scm, :git

set :linked_files, %w{config/database.yml}

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app) do
      execute 'sudo service unicorn restart'
    end
  end
  after :finishing, 'deploy:cleanup'
end
