plugin_name = :cozy_wiki_macros

Rails.configuration.to_prepare do
  %w{query_link}.each do |file_name|
    require_dependency "#{plugin_name}/#{file_name}"
  end
end

Redmine::Plugin.register plugin_name do
  name 'Cozy Wiki Macros plugin'
  author 'Toru Takahashi'
  description 'wiki macros of utilities.'
  version '0.1.0'
  url 'http://github.com/torutk/cozy_wiki_macros'
  author_url 'http://github.com/torutk'
end
