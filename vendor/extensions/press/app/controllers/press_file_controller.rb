class PressFileController < SiteController

  def download_visual
    x_send_file("#{Rails.root}/public/images/press/visuals/#{params[:document]}", :type => "#{params[:type]}")
  end

  def download_document
    x_send_file("#{Rails.root}/public/files/press/#{params[:document]}", :type => "#{params[:type]}")
  end

end
