class PubtypesController < ApplicationController

  before_filter :authenticate_user! 
  
  # GET /pubtypes
  # GET /pubtypes.json
  def index
    @pubtypes = Pubtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pubtypes }
    end
  end

  # GET /pubtypes/1
  # GET /pubtypes/1.json
  def show
    @pubtype = Pubtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pubtype }
    end
  end

  # GET /pubtypes/new
  # GET /pubtypes/new.json
  def new
    @pubtype = Pubtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pubtype }
    end
  end

  # GET /pubtypes/1/edit
  def edit
    @pubtype = Pubtype.find(params[:id])
  end

  # POST /pubtypes
  # POST /pubtypes.json
  def create
    @pubtype = Pubtype.new(params[:pubtype])

    respond_to do |format|
      if @pubtype.save
        format.html { redirect_to @pubtype, notice: 'Pubtype was successfully created.' }
        format.json { render json: @pubtype, status: :created, location: @pubtype }
      else
        format.html { render action: "new" }
        format.json { render json: @pubtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pubtypes/1
  # PUT /pubtypes/1.json
  def update
    @pubtype = Pubtype.find(params[:id])

    respond_to do |format|
      if @pubtype.update_attributes(params[:pubtype])
        format.html { redirect_to @pubtype, notice: 'Pubtype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pubtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pubtypes/1
  # DELETE /pubtypes/1.json
  def destroy
    @pubtype = Pubtype.find(params[:id])
    @pubtype.destroy

    respond_to do |format|
      format.html { redirect_to pubtypes_url }
      format.json { head :no_content }
    end
  end
end
