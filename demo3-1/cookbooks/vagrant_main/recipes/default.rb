package "mysql-server" do
 action :install
end
package "libmysqlclient16-dev" do
  action :install
end

require_recipe "copy_database_yml"
gem_package "bundler" do
  action :install
end
require_recipe "git"
require_recipe "bundler::install"
require_recipe "bootstrap_rake_tasks"
require_recipe "nginx"
require_recipe "unicorn"
require_recipe "custom_nginx_unicorn"
