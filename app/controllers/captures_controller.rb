class CapturesController < ApplicationController

  def photos
    @lastPhoto = Photo.last
    logger.debug 'hereereere'
    render 'index'
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

  def index
    @photos = Photo.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end


  # get captures
  def upload
    File.open(upload_path, 'wb') do |f|
      f.write request.raw_post
    end
    render :text => "ok"
  end


  # GET /captures/1
  # GET /captures/1.json
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /captures/new
  # GET /captures/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /captures/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /captures
  # POST /captures.json
  def create
    @photo = Photo.new(params[:photo])
    @photo.image = File.new(upload_path)
    @photo.save

    redirect_to 'captures/photos'
  end

  # PUT /captures/1
  # PUT /captures/1.json
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /captures/1
  # DELETE /captures/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end

  private

  def upload_path # is used in upload and create
    file_name = session[:session_id].to_s + '.jpg'
    File.join(Rails.root, 'public', 'uploads', file_name)
  end

end
