class PressVisual < PressFile
  has_attached_file :visual,
    :styles => {:medium => "13x13%", :thumb =>"3x3%"},
    :path => ":rails_root/public/system/visuals/:id/:style/:basename.:extension",
    :url => "/system/visuals/:id/:style/:basename.:extension"
    validates_presence_of :visual
    validates_presence_of :nom
    validates_presence_of :type
end
