class Slide < ActiveRecord::Base
   has_attached_file :image, :styles => { :medium =>"315x180>", :thumb => "105x60>"}
end
