class PressDocument < PressFile
  has_attached_file :document,
    :styles => {:thumb => ["3x3%", :png]},
    :path => ":rails_root/public/system/documents/:id/:style/:basename.:extension",
    :url => "/system/documents/:id/:style/:basename.:extension"
end
