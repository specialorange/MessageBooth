class GooglePlusesController < ApplicationController
  # GET /google_plus
  # GET /google_plus.json
  def index
    @google_pluses = GooglePlus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @google_pluses }
    end
  end

  # GET /google_plus/1
  # GET /google_plus/1.json
  def show
    @google_plus = GooglePlus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @google_plus }
    end
  end

  # GET /google_plus/new
  # GET /google_plus/new.json
  def new
    @google_plus = GooglePlus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @google_plus }
    end
  end

  # GET /google_plus/1/edit
  def edit
    @google_plus = GooglePlus.find(params[:id])
  end

  # POST /google_plus
  # POST /google_plus.json
  def create
    @google_plus = GooglePlus.new(params[:google_plus])

    respond_to do |format|
      if @google_plus.save
        format.html { redirect_to @google_plus, notice: 'Google plu was successfully created.' }
        format.json { render json: @google_plus, status: :created, location: @google_plus }
      else
        format.html { render action: "new" }
        format.json { render json: @google_plus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /google_plus/1
  # PUT /google_plus/1.json
  def update
    @google_plus = GooglePlus.find(params[:id])

    respond_to do |format|
      if @google_plus.update_attributes(params[:google_plus])
        format.html { redirect_to @google_plus, notice: 'Google plu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @google_plus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /google_plus/1
  # DELETE /google_plus/1.json
  def destroy
    @google_plus = GooglePlus.find(params[:id])
    @google_plus.destroy

    respond_to do |format|
      format.html { redirect_to google_plus_url }
      format.json { head :no_content }
    end
  end
end
