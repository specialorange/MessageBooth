class GooglePsController < ApplicationController
  # GET /google_ps
  # GET /google_ps.json
  def index
    @google_ps = GoogleP.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @google_ps }
    end
  end

  # GET /google_ps/1
  # GET /google_ps/1.json
  def show
    @google_p = GoogleP.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @google_p }
    end
  end

  # GET /google_ps/new
  # GET /google_ps/new.json
  def new
    @google_p = GoogleP.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @google_p }
    end
  end

  # GET /google_ps/1/edit
  def edit
    @google_p = GoogleP.find(params[:id])
  end

  # POST /google_ps
  # POST /google_ps.json
  def create
    @google_p = GoogleP.new(params[:google_p])

    respond_to do |format|
      if @google_p.save
        format.html { redirect_to @google_p, notice: 'Google p was successfully created.' }
        format.json { render json: @google_p, status: :created, location: @google_p }
      else
        format.html { render action: "new" }
        format.json { render json: @google_p.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /google_ps/1
  # PUT /google_ps/1.json
  def update
    @google_p = GoogleP.find(params[:id])

    respond_to do |format|
      if @google_p.update_attributes(params[:google_p])
        format.html { redirect_to @google_p, notice: 'Google p was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @google_p.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /google_ps/1
  # DELETE /google_ps/1.json
  def destroy
    @google_p = GoogleP.find(params[:id])
    @google_p.destroy

    respond_to do |format|
      format.html { redirect_to google_ps_url }
      format.json { head :no_content }
    end
  end
end
