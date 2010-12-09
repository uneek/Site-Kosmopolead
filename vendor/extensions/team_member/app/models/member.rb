class Member < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium =>"76x76>", :thumb => "30x30>"}
  validates_presence_of :nom
  validates_presence_of :poste
end
