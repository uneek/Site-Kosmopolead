class Admin::PressVisualsController < Admin::ResourceController
  model_class PressVisual

  def create
    PressVisual.create(params[:press_visual])
    redirect_to admin_press_files_path
  end

  def destroy
    press_file = PressVisual.find(params[:id])
    press_file.destroy
    redirect_to admin_press_files_path
  end

end
