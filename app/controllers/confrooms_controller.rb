class ConfroomsController < ApplicationController
  # GET /confrooms
  # GET /confrooms.json
  def index
    @confrooms = Confroom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @confrooms }
    end
  end

  # GET /confrooms/1
  # GET /confrooms/1.json
  def show
    @confroom = Confroom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @confroom }
    end
  end

  # GET /confrooms/new
  # GET /confrooms/new.json
  def new
    @confroom = Confroom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @confroom }
    end
  end

  # GET /confrooms/1/edit
  def edit
    @confroom = Confroom.find(params[:id])
  end

  # POST /confrooms
  # POST /confrooms.json
  def create
    @confroom = Confroom.new(params[:confroom])

    respond_to do |format|
      if @confroom.save
        format.html { redirect_to @confroom, notice: 'Confroom was successfully created.' }
        format.json { render json: @confroom, status: :created, location: @confroom }
      else
        format.html { render action: "new" }
        format.json { render json: @confroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /confrooms/1
  # PUT /confrooms/1.json
  def update
    @confroom = Confroom.find(params[:id])

    respond_to do |format|
      if @confroom.update_attributes(params[:confroom])
        format.html { redirect_to @confroom, notice: 'Confroom was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @confroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /confrooms/1
  # DELETE /confrooms/1.json
  def destroy
    @confroom = Confroom.find(params[:id])
    @confroom.destroy

    respond_to do |format|
      format.html { redirect_to confrooms_url }
      format.json { head :no_content }
    end
  end
end
