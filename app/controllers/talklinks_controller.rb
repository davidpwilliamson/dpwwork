class TalklinksController < ApplicationController

  before_filter :authenticate_user!
  
  # GET /talklinks
  # GET /talklinks.json
  def index
    @talklinks = Talklink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talklinks }
    end
  end

  # GET /talklinks/1
  # GET /talklinks/1.json
  def show
    @talklink = Talklink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @talklink }
    end
  end

  # GET /talklinks/new
  # GET /talklinks/new.json
  def new
    @talklink = Talklink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @talklink }
    end
  end

  # GET /talklinks/1/edit
  def edit
    @talklink = Talklink.find(params[:id])
  end

  # POST /talklinks
  # POST /talklinks.json
  def create
    @talklink = Talklink.new(params[:talklink])

    respond_to do |format|
      if @talklink.save
        format.html { redirect_to @talklink, notice: 'Talklink was successfully created.' }
        format.json { render json: @talklink, status: :created, location: @talklink }
      else
        format.html { render action: "new" }
        format.json { render json: @talklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /talklinks/1
  # PUT /talklinks/1.json
  def update
    @talklink = Talklink.find(params[:id])

    respond_to do |format|
      if @talklink.update_attributes(params[:talklink])
        format.html { redirect_to @talklink, notice: 'Talklink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @talklink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talklinks/1
  # DELETE /talklinks/1.json
  def destroy
    @talklink = Talklink.find(params[:id])
    @talklink.destroy

    respond_to do |format|
      format.html { redirect_to talklinks_url }
      format.json { head :no_content }
    end
  end
end
