custom_nginx_unicorn Mash.new unless attribute?("custom_nginx_unicorn")
default.custom_nginx_unicorn.worker_processes     2
default.custom_nginx_unicorn.preload_app    true
default.custom_nginx_unicorn.timeout  30        
default.custom_nginx_unicorn.working_directory         "/vagrant/fat_free_crm"
default.custom_nginx_unicorn.listen     "/tmp/unicorn.sock"
default.custom_nginx_unicorn.pid   "#{default.custom_nginx_unicorn.working_directory}/tmp/pids/unicorn.pid"
default.custom_nginx_unicorn.stderr_path = "#{default.custom_nginx_unicorn.working_directory}/log/unicorn.stderr.log"
default.custom_nginx_unicorn.stdout_path = "#{default.custom_nginx_unicorn.working_directory}/log/unicorn.stdout.log"