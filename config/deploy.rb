set :application, 'my_blog'
set :repo_url, 'https://github.com/me/my_blog.git'

set :deploy_to, '/home/ubuntu/apps/'
set :scm, :git
namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app) do
      run 'sudo service unicorn restart'
    end
  end
  after :finishing, 'deploy:cleanup'
end
