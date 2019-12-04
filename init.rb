plugin_name = :redmine_cozy_wiki_macros

Rails.configuration.to_prepare do
  %w{query_link query_link_gantt}.each do |file_name|
    require_dependency "#{plugin_name}/#{file_name}"
  end
end

Redmine::Plugin.register plugin_name do
  name 'Redmine Cozy Wiki Macros plugin'
  author 'Toru Takahashi'
  description 'utility wiki macros.'
  version '0.3.0'
  url 'http://github.com/torutk/redmine_cozy_wiki_macros'
  author_url 'http://github.com/torutk'
end
