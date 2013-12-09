cycle_path = '/vagrant/aurora'
cms_path = "/vagrant/cms"

default[:nginx][:default_site_enabled] = false

default[:apps][:cycle][:name] = 'cycle'
default[:apps][:cycle][:path] = cycle_path
default[:apps][:cycle][:relative_docroot] = 'mobile/public'
default[:apps][:cycle][:environment] = {
  'TOL_SITE' => 'mobile',
  'TOL_REALM' => 'ctol',
  'TOL_ENVIRONMENT' => 'production',
  'TOL_CMS_PATH' => cms_path
}
