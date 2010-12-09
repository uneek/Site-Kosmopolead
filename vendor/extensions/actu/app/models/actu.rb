class Actu < ActiveRecord::Base
   validates_presence_of :contenu
   validates_presence_of :actu_date
end
