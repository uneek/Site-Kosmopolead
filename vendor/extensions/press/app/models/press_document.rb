class PressDocument < PressFile
  has_attached_file :document,
    :path => ":rails_root/public/press/documents/:basename.:extension"
end
