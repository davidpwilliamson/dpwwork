class TalksController < ApplicationController

before_filter :authenticate_user!, :except => [:bydate]

  # GET /talks
  # GET /talks.json
  def index
    @talks = Talk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talks }
    end
  end

  def bydate
    @talks = Talk.find(:all, :order => "talk_date DESC")
    @talkyears = @talks.group_by {|t| t.talk_date.year}
  end

  # GET /talks/1
  # GET /talks/1.json
  def show
    @talk = Talk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @talk }
    end
  end

  # GET /talks/new
  # GET /talks/new.json
  def new
    @talk = Talk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @talk }
    end
  end

  # GET /talks/1/edit
  def edit
    @talk = Talk.find(params[:id])
  end

  # POST /talks
  # POST /talks.json
  def create
    @talk = Talk.new(params[:talk])
    if params[:add_link]
      @talk.talklinks.build
      render :action => 'new'
    elsif params[:remove_link]
      render :action => 'new'
    else
      respond_to do |format|
        if @talk.save
          format.html { redirect_to @talk, notice: 'Talk was successfully created.' }
          format.json { render json: @talk, status: :created, location: @talk }
        else
          format.html { render action: "new" }
          format.json { render json: @talk.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /talks/1
  # PUT /talks/1.json
  def update
    @talk = Talk.find(params[:id])
    if params[:add_link]
      unless params[:talk][:talklinks_attributes].blank?
        for attribute in params[:talk][:talklinks_attributes]
          @talk.talklinks.build(attribute.last.except(:_destroy)) unless attribute.last.has_key?(:id)
        end
      end
      @talk.talklinks.build
      render :action => 'edit'
    elsif params[:remove_link]
      removed_links = params[:talk][:talklinks_attributes].collect { |i, att| att[:id] if (att[:id] && att[:_destroy].to_i == 1) }
      Talklink.delete(removed_links)
      flash[:notice] = "Links removed."
      for attribute in params[:talk][:talklinks_attributes]
        @talk.talklinks.build(attribute.last.except(:_destroy)) if (!attribute.last.has_key?(:id) && attribute.last[:_destroy].to_i == 0)
      end
      render :action => 'edit'
    else
      respond_to do |format|
        if @talk.update_attributes(params[:talk])
          format.html { redirect_to @talk, notice: 'Talk was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @talk.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /talks/1
  # DELETE /talks/1.json
  def destroy
    @talk = Talk.find(params[:id])
    @talk.destroy

    respond_to do |format|
      format.html { redirect_to talks_url }
      format.json { head :no_content }
    end
  end
end
