root = "/www/web/hashvr_zombie_server/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.hashvr_zombie_server.sock"
worker_processes 2
timeout 30