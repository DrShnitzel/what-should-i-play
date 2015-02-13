set :application, 'what-should-i-play'
set :repo_url, 'https://github.com/DrShnitzel/what-should-i-play.git'

set :rbenv_ruby, '2.2.0'
set :linked_files, %w(.env) + (fetch(:linked_files) || [])
set :deploy_to, '/var/www/what-should-i-play'
ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
