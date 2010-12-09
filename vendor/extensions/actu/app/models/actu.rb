class Actu < ActiveRecord::Base
   validates :contenu, :presence => true
   validates :actu_date, :presence => true
end
