module PressTags
  include Radiant::Taggable

  tag 'press' do |tag|
    result = %{<a href="/press/"}
    if (tag.attr[:type] == "visual")
      result << %{dowload_visual?}
    elsif (tag.attr[:type] == "document")
      result << %{download_document?}
    end
    result << %{document=#{tag.attr[:file]}&}
    if (tag.attr[:type] == "visual")
      result << %{type=image/jpeg}
    elsif (tag.attr[:type] == "document")
      result << %{type=application/pdf}
    end
    result << %{">Télécharger #{tag.attr[:title]}</a>}
    %{#{result}}
  end

  tag 'visuals' do |tag|
    tag.expand
  end

  tag 'visuals:each' do |tag|
    result = []
    PressVisual.find(:all, :order => 'id ASC').each do |visual|
      tag.locals.visual = visual
      result << tag.expand
    end
    result
  end

  tag 'visuals:each:visual' do |tag|
    visual = tag.locals.visual
    %{<li><img alt="#{visual.nom}" src="#{visual.visual}" /></li>}
  end

  tag 'visual' do |tag|
    visual = PressVisual.find(:first, :conditions => ["nom = ?", tag.attr[:nom]] )
    %{<li><img alt="#{visual.nom}" src="#{visual.visual}" /></li>}
  end

end