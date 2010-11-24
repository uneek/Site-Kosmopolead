class PressDownloadController < SiteController
    def download_visual
    x_send_file("#{Rails.root}/public/press/visuals/#{params[:document]}", :type => "#{params[:type]}")
  end

  def download_document
    x_send_file("#{Rails.root}/public/press/documents/#{params[:document]}", :type => "#{params[:type]}")
  end
end
