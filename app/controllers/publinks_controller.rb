class PublinksController < ApplicationController

  before_filter :authenticate_user!
  # GET /publinks
  # GET /publinks.json
  def index
    @publinks = Publink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publinks }
    end
  end

  # GET /publinks/1
  # GET /publinks/1.json
  def show
    @publink = Publink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publink }
    end
  end

  # GET /publinks/new
  # GET /publinks/new.json
  def new
    @publink = Publink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publink }
    end
  end

  # GET /publinks/1/edit
  def edit
    @publink = Publink.find(params[:id])
  end

  # POST /publinks
  # POST /publinks.json
  def create
    @publink = Publink.new(params[:publink])

    respond_to do |format|
      if @publink.save
        format.html { redirect_to @publink, notice: 'Publink was successfully created.' }
        format.json { render json: @publink, status: :created, location: @publink }
      else
        format.html { render action: "new" }
        format.json { render json: @publink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /publinks/1
  # PUT /publinks/1.json
  def update
    @publink = Publink.find(params[:id])

    respond_to do |format|
      if @publink.update_attributes(params[:publink])
        format.html { redirect_to @publink, notice: 'Publink was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @publink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publinks/1
  # DELETE /publinks/1.json
  def destroy
    @publink = Publink.find(params[:id])
    @publink.destroy

    respond_to do |format|
      format.html { redirect_to publinks_url }
      format.json { head :no_content }
    end
  end
end
