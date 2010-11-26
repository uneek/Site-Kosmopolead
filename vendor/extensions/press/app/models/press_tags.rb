module PressTags
  require('RMagick')
  include Radiant::Taggable

  tag 'press_download' do |tag|
    return "<a href='/press_downloads/#{tag.attr[:file]}/download_#{tag.attr[:type]}'>Télécharger</a>"
  end

#  tag 'press_preview' do |tag|
#    doc = PressDocument.find(:first, :conditions =>['nom = ?', tag.attr[:nom]])
#    Magick::Image.read(doc.document).first
#    doc.write("#{doc.nom}".jpg)
#    preview = doc.resize(100,100)
#    preview.write("thumb")
#  end

  tag 'press_preview' do |tag|
    return "<a href='/press_downloads/#{tag.attr[:file]}/download_#{tag.attr[:type]}'><img src='/system/documents/#{tag.attr[:file]}/thumb/dossier_de_presse.png' /></a>"
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