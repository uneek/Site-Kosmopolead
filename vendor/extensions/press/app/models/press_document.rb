class PressDocument < PressFile
  has_attached_file :document,
    :path => ":rails_root/public/system/documents/:id/:basename.:extension"
end
