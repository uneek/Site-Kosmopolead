module HomeSliderTags
  include Radiant::Taggable

  tag 'slides' do |tag|
    tag.expand
  end

  tag 'slides:each' do |tag|
    result = []
    Slide.find(:all, :order => 'title ASC').each do |slide|
      tag.locals.slide = slide
      result << tag.expand
    end
    result
  end

  tag 'slides:each:slide' do |tag|
    slide = tag.locals.slide
    %{<li><a href="#{slide.url}" ><img src="#{slide.image}" alt="#{slide.title}" title="#{slide.title}" /></a></li>}
  end
end