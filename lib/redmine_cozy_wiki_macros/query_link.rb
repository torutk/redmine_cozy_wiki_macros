module RedmineCozyWikiMacros::QueryLink
  Redmine::WikiFormatting::Macros.register do
    desc 'create macro with links to custom query.'
    macro :query_link do |obj, args|

      begin
        raise 'no parameters' if args.count.zero?
        raise 'too few parameters' if args.count < 2
        raise 'too many parameters' if args.count > 2

        text, query_id = args.first(2)
        link_to(text, {:controller => 'issues', :action => 'index',
                :project_id => @project, :query_id => query_id},
                :class => 'query')
      rescue => err_msg
        raise <<-TEXT.html_safe
Parameter error: #{err_msg}<br>
Usage: {{query_link(text, query_id)}}
TEXT
      end

    end
  end
end
