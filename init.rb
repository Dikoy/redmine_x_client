Redmine::Plugin.register :redmine_x_client do
  name 'RedmineX Client plugin'
  author 'Ondrej Svejkovsky'
  description 'Plugin for custom css and js'
  version '1.1.0'
  url 'https://redmine-x.com'
end

if Redmine::VERSION::MAJOR >= 5
  plugin_path = File.join(Rails.root, 'plugins', 'redmine_x_client')
  require "#{plugin_path}/lib/redmine_x_client"
else
  require 'redmine_x_client/view_layouts_base_hook'
end
