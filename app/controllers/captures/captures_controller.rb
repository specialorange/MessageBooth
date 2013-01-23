class CapturesController < ApplicationController

  def photos
    logger.debug 'hereereere'
    # template then layout
    # render 'devise/invitations/new', :layout => 'application_unauthorized2_t2' 
    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @lastPhoto }
    # end
  end

  def photo_booths
    render 'index'
  end
  def videos
    render 'index'
  end
  def audios
    render 'index'
  end
  def letters
    render 'index'
  end
  def attachments
    render 'index'
  end
  def urls
    render 'index'
  end
  def rsses
    render 'index'
  end
  def image_urls
    render 'index'
  end

end
