class PressVisual < PressFile
  has_attached_file :visual,
    :path => ":rails_root/public/press/visuals/:basename.:extension",
    :style => {:medium => "560x457>", :thumb =>"150x122>"}
end
