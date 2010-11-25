class Admin::PressFilesController < Admin::ResourceController
  model_class PressFile

  def new
     if(params[:file_type] == "visual")
       @press_file = PressVisual.new
     elsif(params[:file_type] == "document")
       @press_file = PressDocument.new
     end
  end

  def index
     @press_documents = PressDocument.find(:all)
     @press_visuals = PressVisual.find(:all)
  end

end
