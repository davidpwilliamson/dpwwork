require "spec_helper"

describe PubtypesController do
  describe "routing" do

    it "routes to #index" do
      get("/pubtypes").should route_to("pubtypes#index")
    end

    it "routes to #new" do
      get("/pubtypes/new").should route_to("pubtypes#new")
    end

    it "routes to #show" do
      get("/pubtypes/1").should route_to("pubtypes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pubtypes/1/edit").should route_to("pubtypes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pubtypes").should route_to("pubtypes#create")
    end

    it "routes to #update" do
      put("/pubtypes/1").should route_to("pubtypes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pubtypes/1").should route_to("pubtypes#destroy", :id => "1")
    end

  end
end
