bash "run bundle install in app directory" do
  cwd File.join(node[:bundler][:apps_path], node[:bundler][:app])
  code "bundle install"
end
