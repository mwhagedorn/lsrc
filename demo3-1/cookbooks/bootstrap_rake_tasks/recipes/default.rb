
package "rake" do
  action :install
end

bash "create FFCRM database" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code "bundle exec rake db:create RAILS_ENV=production"
end

bash "bootstrap CRM data schema" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code "bundle exec rake crm:setup RAILS_ENV=production"
end

bash "bootstrap CRM data" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code "bundle exec rake crm:demo:load RAILS_ENV=production"
end