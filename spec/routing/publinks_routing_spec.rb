require "spec_helper"

describe PublinksController do
  describe "routing" do

    it "routes to #index" do
      get("/publinks").should route_to("publinks#index")
    end

    it "routes to #new" do
      get("/publinks/new").should route_to("publinks#new")
    end

    it "routes to #show" do
      get("/publinks/1").should route_to("publinks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/publinks/1/edit").should route_to("publinks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/publinks").should route_to("publinks#create")
    end

    it "routes to #update" do
      put("/publinks/1").should route_to("publinks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/publinks/1").should route_to("publinks#destroy", :id => "1")
    end

  end
end
