include_recipe "nginx"
include_recipe "php-fpm"

template "#{node['php-fpm'][:conf_dir]}/conf.d/30-timezone.ini" do
  source "php-timezone.ini.erb"
  owner "root"
  group "root"
  mode 0644
end
