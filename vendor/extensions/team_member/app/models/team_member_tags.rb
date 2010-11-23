module TeamMemberTags
  include Radiant::Taggable

  tag 'members' do |tag|
    tag.expand
  end

  tag 'members:each' do |tag|
    result = []
    Member.find(:all, :order => 'id ASC').each do |member|
      tag.locals.member = member
      result << tag.expand
    end
    result
  end

  tag 'members:each:member' do |tag|
    member = tag.locals.member
    %{<div class="membre_equipe"><div class="cadre"><img src="#{member.image}" width="76px" height="76px" /></div><p>#{member.nom}<br />#{member.poste}</p><a href="#{member.profil_kosmo}"></a></div>}
  end

end