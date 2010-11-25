module PressTags
  include Radiant::Taggable

  tag 'press_download' do |tag|
    return "<a href='/press_downloads/#{tag.attr[:file]}/download_#{tag.attr[:type]}'>Télécharger</a>"
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
    %{<li><img alt="#{visual.id}" src="#{visual.visual(:thumb)}" /></li>}
  end

end