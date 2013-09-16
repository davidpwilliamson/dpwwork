class PublicationsController < ApplicationController

before_filter :authenticate_user!, :except => [:bydate, :bytype, :bycategory]
  
  # GET /publications
  # GET /publications.json
  def index
    @publications = Publication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @publications }
    end
  end

  def bydate
    @publications = Publication.find(:all, :order => "pub_date DESC")
    @pubyears = @publications.group_by {|t| t.pub_date.year}
  end

  def bytype
    @publications = Publication.find(:all, :order => "pubtype_id, pub_date DESC")
    @pubtypes = @publications.group_by {|t| t.pubtype.name}
  end

  def bycategory
    @categories = Category.find(:all, :order => "name")
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
    @publication = Publication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @publication }
    end
  end

  # GET /publications/new
  # GET /publications/new.json
  def new
    @publication = Publication.new
    @categories = Category.find(:all, :order => "name")

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @publication }
    end
  end

  # GET /publications/1/edit
  def edit
    @publication = Publication.find(params[:id])
    @categories = Category.find(:all, :order => "name")
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(params[:publication])
    @categories = Category.find(:all, :order => "name")
    if params[:add_link]
      @publication.publinks.build
      render :action => 'new'
    elsif params[:remove_link]
      render :action => 'new'
    else
      respond_to do |format|
        if @publication.save
          format.html { redirect_to @publication, notice: 'Publication was successfully created.' }
          format.json { render json: @publication, status: :created, location: @publication }
        else
          format.html { render action: "new" }
          format.json { render json: @publication.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PUT /publications/1
  # PUT /publications/1.json
  def update
    @publication = Publication.find(params[:id])
    @categories = Category.find(:all, :order => "name")
    if params[:add_link]
      unless params[:publication][:publinks_attributes].blank?
        for attribute in params[:publication][:publinks_attributes]
          @publication.publinks.build(attribute.last.except(:_destroy)) unless attribute.last.has_key?(:id)
        end
      end
      @publication.publinks.build
      render :action => 'edit'
    elsif params[:remove_link]
      removed_links = params[:publication][:publinks_attributes].collect { |i, att| att[:id] if (att[:id] && att[:_destroy].to_i == 1) }
      Publink.delete(removed_links)
      flash[:notice] = "Links removed."
      for attribute in params[:publication][:publinks_attributes]
        @publication.publinks.build(attribute.last.except(:_destroy)) if (!attribute.last.has_key?(:id) && attribute.last[:_destroy].to_i == 0)
      end
      render :action => 'edit'
    else
      respond_to do |format|
        if @publication.update_attributes(params[:publication])
          format.html { redirect_to @publication, notice: 'Publication was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @publication.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication = Publication.find(params[:id])
    @publication.destroy

    respond_to do |format|
      format.html { redirect_to publications_url }
      format.json { head :no_content }
    end
  end
end
