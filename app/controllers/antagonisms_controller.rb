class AntagonismsController < ApplicationController
  # GET /antagonisms
  # GET /antagonisms.json
  def index
    @antagonisms = Antagonism.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @antagonisms }
    end
  end

  # GET /antagonisms/1
  # GET /antagonisms/1.json
  def show
    @antagonism = Antagonism.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @antagonism }
    end
  end

  # GET /antagonisms/new
  # GET /antagonisms/new.json
  def new
    @antagonism = Antagonism.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @antagonism }
    end
  end

  # GET /antagonisms/1/edit
  def edit
    @antagonism = Antagonism.find(params[:id])
  end

  # POST /antagonisms
  # POST /antagonisms.json
  def create
    @antagonism = Antagonism.new(params[:antagonism])

    respond_to do |format|
      if @antagonism.save
        format.html { redirect_to @antagonism, notice: 'Antagonism was successfully created.' }
        format.json { render json: @antagonism, status: :created, location: @antagonism }
      else
        format.html { render action: "new" }
        format.json { render json: @antagonism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /antagonisms/1
  # PUT /antagonisms/1.json
  def update
    @antagonism = Antagonism.find(params[:id])

    respond_to do |format|
      if @antagonism.update_attributes(params[:antagonism])
        format.html { redirect_to @antagonism, notice: 'Antagonism was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @antagonism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /antagonisms/1
  # DELETE /antagonisms/1.json
  def destroy
    @antagonism = Antagonism.find(params[:id])
    @antagonism.destroy

    respond_to do |format|
      format.html { redirect_to antagonisms_url }
      format.json { head :no_content }
    end
  end
end
