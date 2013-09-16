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

describe PublinksController do

  # This should return the minimal set of attributes required to create a valid
  # Publink. As you add validations to Publink, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "url" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PublinksController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all publinks as @publinks" do
      publink = Publink.create! valid_attributes
      get :index, {}, valid_session
      assigns(:publinks).should eq([publink])
    end
  end

  describe "GET show" do
    it "assigns the requested publink as @publink" do
      publink = Publink.create! valid_attributes
      get :show, {:id => publink.to_param}, valid_session
      assigns(:publink).should eq(publink)
    end
  end

  describe "GET new" do
    it "assigns a new publink as @publink" do
      get :new, {}, valid_session
      assigns(:publink).should be_a_new(Publink)
    end
  end

  describe "GET edit" do
    it "assigns the requested publink as @publink" do
      publink = Publink.create! valid_attributes
      get :edit, {:id => publink.to_param}, valid_session
      assigns(:publink).should eq(publink)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Publink" do
        expect {
          post :create, {:publink => valid_attributes}, valid_session
        }.to change(Publink, :count).by(1)
      end

      it "assigns a newly created publink as @publink" do
        post :create, {:publink => valid_attributes}, valid_session
        assigns(:publink).should be_a(Publink)
        assigns(:publink).should be_persisted
      end

      it "redirects to the created publink" do
        post :create, {:publink => valid_attributes}, valid_session
        response.should redirect_to(Publink.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved publink as @publink" do
        # Trigger the behavior that occurs when invalid params are submitted
        Publink.any_instance.stub(:save).and_return(false)
        post :create, {:publink => { "url" => "invalid value" }}, valid_session
        assigns(:publink).should be_a_new(Publink)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Publink.any_instance.stub(:save).and_return(false)
        post :create, {:publink => { "url" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested publink" do
        publink = Publink.create! valid_attributes
        # Assuming there are no other publinks in the database, this
        # specifies that the Publink created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Publink.any_instance.should_receive(:update_attributes).with({ "url" => "MyString" })
        put :update, {:id => publink.to_param, :publink => { "url" => "MyString" }}, valid_session
      end

      it "assigns the requested publink as @publink" do
        publink = Publink.create! valid_attributes
        put :update, {:id => publink.to_param, :publink => valid_attributes}, valid_session
        assigns(:publink).should eq(publink)
      end

      it "redirects to the publink" do
        publink = Publink.create! valid_attributes
        put :update, {:id => publink.to_param, :publink => valid_attributes}, valid_session
        response.should redirect_to(publink)
      end
    end

    describe "with invalid params" do
      it "assigns the publink as @publink" do
        publink = Publink.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Publink.any_instance.stub(:save).and_return(false)
        put :update, {:id => publink.to_param, :publink => { "url" => "invalid value" }}, valid_session
        assigns(:publink).should eq(publink)
      end

      it "re-renders the 'edit' template" do
        publink = Publink.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Publink.any_instance.stub(:save).and_return(false)
        put :update, {:id => publink.to_param, :publink => { "url" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested publink" do
      publink = Publink.create! valid_attributes
      expect {
        delete :destroy, {:id => publink.to_param}, valid_session
      }.to change(Publink, :count).by(-1)
    end

    it "redirects to the publinks list" do
      publink = Publink.create! valid_attributes
      delete :destroy, {:id => publink.to_param}, valid_session
      response.should redirect_to(publinks_url)
    end
  end

end
