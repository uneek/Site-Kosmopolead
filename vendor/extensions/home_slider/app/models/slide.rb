class Slide < ActiveRecord::Base
   has_attached_file :image, :styles => { :medium =>"315x180>", :thumb => "105x60>"}
   validates :title, :presence => true
   validates :url, :presence => true
   validates :image_file_name, :presence => true
   validates :image_file_size, :presence => true
end
