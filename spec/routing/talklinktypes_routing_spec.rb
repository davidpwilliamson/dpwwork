require "spec_helper"

describe TalklinktypesController do
  describe "routing" do

    it "routes to #index" do
      get("/talklinktypes").should route_to("talklinktypes#index")
    end

    it "routes to #new" do
      get("/talklinktypes/new").should route_to("talklinktypes#new")
    end

    it "routes to #show" do
      get("/talklinktypes/1").should route_to("talklinktypes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/talklinktypes/1/edit").should route_to("talklinktypes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/talklinktypes").should route_to("talklinktypes#create")
    end

    it "routes to #update" do
      put("/talklinktypes/1").should route_to("talklinktypes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/talklinktypes/1").should route_to("talklinktypes#destroy", :id => "1")
    end

  end
end
