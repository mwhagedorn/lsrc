template "/vagrant/fat_free_crm/config/unicorn.rb" do
  owner node[:user]
  mode 0644
  source "unicorn.rb.erb"
end


template "/etc/nginx/nginx.conf" do
  owner node[:user]
  mode 0644
  source "nginx.conf.erb"
  notifies :reload, resources(:service => "nginx")
end