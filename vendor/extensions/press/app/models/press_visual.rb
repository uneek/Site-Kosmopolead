class PressVisual < PressFile
  has_attached_file :visual,
    :styles => {:medium => "15x15%", :thumb =>"3x3%"},
    :path => ":rails_root/public/system/visuals/:id/:style/:basename.:extension",
    :url => "/system/visuals/:id/:style/:basename.:extension"
    
end
