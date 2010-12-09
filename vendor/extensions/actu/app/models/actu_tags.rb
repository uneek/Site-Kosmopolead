module ActuTags
  include Radiant::Taggable

  tag 'actus' do |tag|
    tag.expand
  end

  tag 'actus:each' do |tag|
    result = []
    Actu.find(:all, :order => 'id DESC').each do |actu|
      tag.locals.actu = actu
      result << tag.expand
    end
    result
  end

  tag 'actus:each:actu' do |tag|
    actu = tag.locals.actu
    %{<li><a href="#{actu.lien}" target="_blank" ><p><span>#{actu.actu_date}</span><br />#{actu.contenu}</p></a></li>}
  end
end