require File.dirname(__FILE__) + '/../spec_helper'

describe 'Temoignage' do
  dataset :pages

  describe '<r:temoignage>' do
    it 'should render the correct HTML' do
      tag = '<r:temoignage>'

      expected = %{<div class="temoin">
  <h2>Témoignages</h2>
  <img src="">
  <p>Blabla</p>
  <p>Texte</p>
</div>}

      pages(:home).should render(tag).as(expected)
    end
  end
end