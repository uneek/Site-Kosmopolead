class Admin::PressDocumentsController < Admin::ResourceController
  model_class PressDocument

  def create
    PressDocument.create(params[:press_document])
    redirect_to admin_press_files_path
  end

  def destroy
    press_file = PressDocument.find(params[:id])
    press_file.destroy
    redirect_to admin_press_files_path
  end

end
