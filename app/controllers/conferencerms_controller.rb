class ConferencermsController < ApplicationController
  # GET /conferencerms
  # GET /conferencerms.json
  def index
    @conferencerms = Conferencerm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @conferencerms }
    end
  end

  # GET /conferencerms/1
  # GET /conferencerms/1.json
  def show
    @conferencerm = Conferencerm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @conferencerm }
    end
  end

  # GET /conferencerms/new
  # GET /conferencerms/new.json
  def new
    @conferencerm = Conferencerm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @conferencerm }
    end
  end

  # GET /conferencerms/1/edit
  def edit
    @conferencerm = Conferencerm.find(params[:id])
  end

  # POST /conferencerms
  # POST /conferencerms.json
  def create
    @conferencerm = Conferencerm.new(params[:conferencerm])

    respond_to do |format|
      if @conferencerm.save
        format.html { redirect_to @conferencerm, notice: 'Conferencerm was successfully created.' }
        format.json { render json: @conferencerm, status: :created, location: @conferencerm }
      else
        format.html { render action: "new" }
        format.json { render json: @conferencerm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /conferencerms/1
  # PUT /conferencerms/1.json
  def update
    @conferencerm = Conferencerm.find(params[:id])

    respond_to do |format|
      if @conferencerm.update_attributes(params[:conferencerm])
        format.html { redirect_to @conferencerm, notice: 'Conferencerm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @conferencerm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conferencerms/1
  # DELETE /conferencerms/1.json
  def destroy
    @conferencerm = Conferencerm.find(params[:id])
    @conferencerm.destroy

    respond_to do |format|
      format.html { redirect_to conferencerms_url }
      format.json { head :no_content }
    end
  end
end
