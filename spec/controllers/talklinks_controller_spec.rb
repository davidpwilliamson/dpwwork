require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TalklinksController do

  # This should return the minimal set of attributes required to create a valid
  # Talklink. As you add validations to Talklink, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "url" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TalklinksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all talklinks as @talklinks" do
      talklink = Talklink.create! valid_attributes
      get :index, {}, valid_session
      assigns(:talklinks).should eq([talklink])
    end
  end

  describe "GET show" do
    it "assigns the requested talklink as @talklink" do
      talklink = Talklink.create! valid_attributes
      get :show, {:id => talklink.to_param}, valid_session
      assigns(:talklink).should eq(talklink)
    end
  end

  describe "GET new" do
    it "assigns a new talklink as @talklink" do
      get :new, {}, valid_session
      assigns(:talklink).should be_a_new(Talklink)
    end
  end

  describe "GET edit" do
    it "assigns the requested talklink as @talklink" do
      talklink = Talklink.create! valid_attributes
      get :edit, {:id => talklink.to_param}, valid_session
      assigns(:talklink).should eq(talklink)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Talklink" do
        expect {
          post :create, {:talklink => valid_attributes}, valid_session
        }.to change(Talklink, :count).by(1)
      end

      it "assigns a newly created talklink as @talklink" do
        post :create, {:talklink => valid_attributes}, valid_session
        assigns(:talklink).should be_a(Talklink)
        assigns(:talklink).should be_persisted
      end

      it "redirects to the created talklink" do
        post :create, {:talklink => valid_attributes}, valid_session
        response.should redirect_to(Talklink.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved talklink as @talklink" do
        # Trigger the behavior that occurs when invalid params are submitted
        Talklink.any_instance.stub(:save).and_return(false)
        post :create, {:talklink => { "url" => "invalid value" }}, valid_session
        assigns(:talklink).should be_a_new(Talklink)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Talklink.any_instance.stub(:save).and_return(false)
        post :create, {:talklink => { "url" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested talklink" do
        talklink = Talklink.create! valid_attributes
        # Assuming there are no other talklinks in the database, this
        # specifies that the Talklink created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Talklink.any_instance.should_receive(:update_attributes).with({ "url" => "MyString" })
        put :update, {:id => talklink.to_param, :talklink => { "url" => "MyString" }}, valid_session
      end

      it "assigns the requested talklink as @talklink" do
        talklink = Talklink.create! valid_attributes
        put :update, {:id => talklink.to_param, :talklink => valid_attributes}, valid_session
        assigns(:talklink).should eq(talklink)
      end

      it "redirects to the talklink" do
        talklink = Talklink.create! valid_attributes
        put :update, {:id => talklink.to_param, :talklink => valid_attributes}, valid_session
        response.should redirect_to(talklink)
      end
    end

    describe "with invalid params" do
      it "assigns the talklink as @talklink" do
        talklink = Talklink.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Talklink.any_instance.stub(:save).and_return(false)
        put :update, {:id => talklink.to_param, :talklink => { "url" => "invalid value" }}, valid_session
        assigns(:talklink).should eq(talklink)
      end

      it "re-renders the 'edit' template" do
        talklink = Talklink.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Talklink.any_instance.stub(:save).and_return(false)
        put :update, {:id => talklink.to_param, :talklink => { "url" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested talklink" do
      talklink = Talklink.create! valid_attributes
      expect {
        delete :destroy, {:id => talklink.to_param}, valid_session
      }.to change(Talklink, :count).by(-1)
    end

    it "redirects to the talklinks list" do
      talklink = Talklink.create! valid_attributes
      delete :destroy, {:id => talklink.to_param}, valid_session
      response.should redirect_to(talklinks_url)
    end
  end

end