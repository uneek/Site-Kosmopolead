class Member < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium =>"76x76>", :thumb => "30x30>"}
end
