module RedmineCozyWikiMacros::QueryLinkGantt
  Redmine::WikiFormatting::Macros.register do
    desc "create macro with link to custom query on gantt.\n" +
         "Examples:\n\n" +
         "{{query_link_gantt(master schedule, 3)}} -- link to gantt for custom query id = 3\n" +
         "{{query_link_gantt(master schedule, 3, month=11, year=2019)}} -- specify start year/month\n" +
         "{{query_link_gantt(master schedule, 3, months=6)}} -- specify period of month\n" +
         "{{query_link_gantt(master schedule, 3, zoom=3)}} -- specify zoom\n"

    macro :query_link_gantt do |obj, args|
      args, options = extract_macro_options(args, :months, :month, :year, :zoom)

      begin
        raise 'no parameters' if args.count.zero?
        raise 'too few parameters' if args.count < 2

        text, query_id = args.first(2)
        link_to(text, {:controller => 'gantts', :action => 'show',
                       :project_id => @project, :query_id => query_id}.merge!(options),
                :class => 'query')
      rescue => err_msg
        raise <<-TEXT.html_safe
Parameter error: #{err_msg}<br>
Usage: {{query_link_gantt(text, query_id)}}
        TEXT
      end
    end

  end
end
