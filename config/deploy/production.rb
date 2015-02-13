server 'drshnitsel.ru',
       roles: %w{web app db},
       primary: true,
       ssh_options: {
           user: 'what-should-i-play',
           auth_methods: %w(publickey)
       }

set :puma_threads, [0, 16]
set :puma_workers, 2
set :puma_init_active_record, false
set :puma_preload_app, true
