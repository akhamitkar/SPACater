class CaterersController < ApplicationController
  # GET /caterers
  # GET /caterers.json
  def index
    @caterers = Caterer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caterers }
    end
  end

  # GET /caterers/1
  # GET /caterers/1.json
  def show
    @caterer = Caterer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caterer }
    end
  end

  # GET /caterers/new
  # GET /caterers/new.json
  def new
    @caterer = Caterer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caterer }
    end
  end

  # GET /caterers/1/edit
  def edit
    @caterer = Caterer.find(params[:id])
  end

  # POST /caterers
  # POST /caterers.json
  def create
    @caterer = Caterer.new(params[:caterer])

    respond_to do |format|
      if @caterer.save
        format.html { redirect_to @caterer, notice: 'Caterer was successfully created.' }
        format.json { render json: @caterer, status: :created, location: @caterer }
      else
        format.html { render action: "new" }
        format.json { render json: @caterer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caterers/1
  # PUT /caterers/1.json
  def update
    @caterer = Caterer.find(params[:id])

    respond_to do |format|
      if @caterer.update_attributes(params[:caterer])
        format.html { redirect_to @caterer, notice: 'Caterer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @caterer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caterers/1
  # DELETE /caterers/1.json
  def destroy
    @caterer = Caterer.find(params[:id])
    @caterer.destroy

    respond_to do |format|
      format.html { redirect_to caterers_url }
      format.json { head :no_content }
    end
  end
end
