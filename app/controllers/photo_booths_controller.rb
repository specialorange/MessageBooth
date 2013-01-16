class PhotoBoothsController < ApplicationController
  # GET /photo_booths
  # GET /photo_booths.json
  def index
    @photo_booths = PhotoBooth.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photo_booths }
    end
  end

  # GET /photo_booths/1
  # GET /photo_booths/1.json
  def show
    @photo_booth = PhotoBooth.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo_booth }
    end
  end

  # GET /photo_booths/new
  # GET /photo_booths/new.json
  def new
    @photo_booth = PhotoBooth.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo_booth }
    end
  end

  # GET /photo_booths/1/edit
  def edit
    @photo_booth = PhotoBooth.find(params[:id])
  end

  # POST /photo_booths
  # POST /photo_booths.json
  def create
    @photo_booth = PhotoBooth.new(params[:photo_booth])

    respond_to do |format|
      if @photo_booth.save
        format.html { redirect_to @photo_booth, notice: 'Photo booth was successfully created.' }
        format.json { render json: @photo_booth, status: :created, location: @photo_booth }
      else
        format.html { render action: "new" }
        format.json { render json: @photo_booth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photo_booths/1
  # PUT /photo_booths/1.json
  def update
    @photo_booth = PhotoBooth.find(params[:id])

    respond_to do |format|
      if @photo_booth.update_attributes(params[:photo_booth])
        format.html { redirect_to @photo_booth, notice: 'Photo booth was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo_booth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_booths/1
  # DELETE /photo_booths/1.json
  def destroy
    @photo_booth = PhotoBooth.find(params[:id])
    @photo_booth.destroy

    respond_to do |format|
      format.html { redirect_to photo_booths_url }
      format.json { head :no_content }
    end
  end
end
