class Member < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium =>"76x76>", :thumb => "30x30>"}
  validates :nom, :presence => true
  validates :poste, :presence => true
end
