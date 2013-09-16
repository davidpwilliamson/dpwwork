require "spec_helper"

describe PublinktypesController do
  describe "routing" do

    it "routes to #index" do
      get("/publinktypes").should route_to("publinktypes#index")
    end

    it "routes to #new" do
      get("/publinktypes/new").should route_to("publinktypes#new")
    end

    it "routes to #show" do
      get("/publinktypes/1").should route_to("publinktypes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/publinktypes/1/edit").should route_to("publinktypes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/publinktypes").should route_to("publinktypes#create")
    end

    it "routes to #update" do
      put("/publinktypes/1").should route_to("publinktypes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/publinktypes/1").should route_to("publinktypes#destroy", :id => "1")
    end

  end
end
