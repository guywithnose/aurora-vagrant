include_recipe "aurora::php-curl"

template "#{node[:nginx][:dir]}/sites-enabled/#{node[:apps][:cycle][:name]}" do
  source "nginx/cycle.erb"
  owner "root"
  group "root"
  mode 0644
end

