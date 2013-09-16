class PublinktypesController < ApplicationController

  before_filter :authenticate_user!
  
  # GET /publinktypes
  # GET /publinktypes.json
  def index
    @publinktypes = Publinktype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publinktypes }
    end
  end

  # GET /publinktypes/1
  # GET /publinktypes/1.json
  def show
    @publinktype = Publinktype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publinktype }
    end
  end

  # GET /publinktypes/new
  # GET /publinktypes/new.json
  def new
    @publinktype = Publinktype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publinktype }
    end
  end

  # GET /publinktypes/1/edit
  def edit
    @publinktype = Publinktype.find(params[:id])
  end

  # POST /publinktypes
  # POST /publinktypes.json
  def create
    @publinktype = Publinktype.new(params[:publinktype])

    respond_to do |format|
      if @publinktype.save
        format.html { redirect_to @publinktype, notice: 'Publinktype was successfully created.' }
        format.json { render json: @publinktype, status: :created, location: @publinktype }
      else
        format.html { render action: "new" }
        format.json { render json: @publinktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /publinktypes/1
  # PUT /publinktypes/1.json
  def update
    @publinktype = Publinktype.find(params[:id])

    respond_to do |format|
      if @publinktype.update_attributes(params[:publinktype])
        format.html { redirect_to @publinktype, notice: 'Publinktype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publinktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publinktypes/1
  # DELETE /publinktypes/1.json
  def destroy
    @publinktype = Publinktype.find(params[:id])
    @publinktype.destroy

    respond_to do |format|
      format.html { redirect_to publinktypes_url }
      format.json { head :no_content }
    end
  end
end
