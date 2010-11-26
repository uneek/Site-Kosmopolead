module ActuTags
  include Radiant::Taggable

  tag 'actus' do |tag|
    tag.expand
  end

  tag 'actus:each' do |tag|
    result = []
    Actu.find(:all, :order => 'id ASC').each do |actu|
      tag.locals.actu = actu
      result << tag.expand
    end
    result
  end

  tag 'actus:each:actu' do |tag|
    actu = tag.locals.actu
    %{<li><a href="#{actu.lien}" target="_blank" ><p>#{actu.actu_date}<br />#{actu.contenu}</p></a></li>}
  end
end