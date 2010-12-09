class PressFile < ActiveRecord::Base
  validates_presence_of :nom
  validates_presence_of :type
end
