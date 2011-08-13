cookbook_file "/vagrant/fat_free_crm/config/database.yml" do
  source "database.mysql.yml" # this is the value that would be inferred from the path parameter
end