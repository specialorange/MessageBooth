class CapturesController < ApplicationController



  def index

    logger.debug "@photos"
    logger.debug @photos

    @photos = Photo.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # get photos
  def upload
    File.open(upload_path, 'wb') do |f|
      f.write request.raw_post
    end
    render :text => "ok"
  end

  private

  def upload_path # is used in upload and create
    file_name = session[:session_id].to_s + '.jpg'
    File.join(Rails.root, 'public', 'uploads', file_name)
  end


  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = Photo.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(params[:photo])
    @photo.image = File.new(upload_path)
    @photo.save

    redirect_to @capture
  end

  # PUT /photos/1
  # PUT /photos/1.json
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

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photos_url }
      format.json { head :no_content }
    end
  end
end
