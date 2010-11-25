class PressDownloadsController < SiteController
  
   def download_visual

    press_visual = PressVisual.find(params[:id])
    x_send_file("#{press_visual.visual.path}", :type => press_visual.visual_content_type)
   end

  def download_document
    press_document = PressDocument.find(params[:id])
    x_send_file("#{press_document.document.path}", :type => press_document.document_content_type)
  end
end
