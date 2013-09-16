class TalklinktypesController < ApplicationController

  before_filter :authenticate_user!
  
  # GET /talklinktypes
  # GET /talklinktypes.json
  def index
    @talklinktypes = Talklinktype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talklinktypes }
    end
  end

  # GET /talklinktypes/1
  # GET /talklinktypes/1.json
  def show
    @talklinktype = Talklinktype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @talklinktype }
    end
  end

  # GET /talklinktypes/new
  # GET /talklinktypes/new.json
  def new
    @talklinktype = Talklinktype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @talklinktype }
    end
  end

  # GET /talklinktypes/1/edit
  def edit
    @talklinktype = Talklinktype.find(params[:id])
  end

  # POST /talklinktypes
  # POST /talklinktypes.json
  def create
    @talklinktype = Talklinktype.new(params[:talklinktype])

    respond_to do |format|
      if @talklinktype.save
        format.html { redirect_to @talklinktype, notice: 'Talklinktype was successfully created.' }
        format.json { render json: @talklinktype, status: :created, location: @talklinktype }
      else
        format.html { render action: "new" }
        format.json { render json: @talklinktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /talklinktypes/1
  # PUT /talklinktypes/1.json
  def update
    @talklinktype = Talklinktype.find(params[:id])

    respond_to do |format|
      if @talklinktype.update_attributes(params[:talklinktype])
        format.html { redirect_to @talklinktype, notice: 'Talklinktype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @talklinktype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talklinktypes/1
  # DELETE /talklinktypes/1.json
  def destroy
    @talklinktype = Talklinktype.find(params[:id])
    @talklinktype.destroy

    respond_to do |format|
      format.html { redirect_to talklinktypes_url }
      format.json { head :no_content }
    end
  end
end
