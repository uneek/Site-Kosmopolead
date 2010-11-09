module CustomTags
  include Radiant::Taggable
  
  desc %{Render actualities list}

  tag "sitewithtabsmapper" do |tag|

    root = Page.find_by_url(root_url = tag.attr.delete('root') || "/")

    r = []
    for child in root.children
      if (!child.class_name.eql? "FileNotFoundPage" and !child.part("no-sitemap"))
        r << %{<li class="sitemap"><a href="#{child.url}">#{child.title}</a>}
        if child.part("tabs")
           r<< " : "
           i = 1
           for tab in child.parts
             if (tab.name != "body" && tab.name != "tabs")
              r<< %{<a class="childsitemap" href="#" id="tab-#{child.slug}-#{i}" rel="#{child.url}">#{tab.name}</a> }
              i += 1
             end
           end
#           r<< %{</ul>}
         end
         r<< %{</li>}
       end
    end

    %{#{r}}

#      page = tag.locals.page
#      i = 1
#      "<ul>"
#      for child in page.children
#        "<li class='childsitemap'>"
#        "<a href='#{page.url.to_str.concat('#ui-tabs-').concat(i)}'>#{child.title}</a>"
#        "</li>"
#        i + 1
#      end
#      "</ul>"

  end


end