class PressFile < ActiveRecord::Base
  validates :nom, :presence => true
  validates :type, :presence =>true
end
