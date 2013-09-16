require "spec_helper"

describe TalklinksController do
  describe "routing" do

    it "routes to #index" do
      get("/talklinks").should route_to("talklinks#index")
    end

    it "routes to #new" do
      get("/talklinks/new").should route_to("talklinks#new")
    end

    it "routes to #show" do
      get("/talklinks/1").should route_to("talklinks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/talklinks/1/edit").should route_to("talklinks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/talklinks").should route_to("talklinks#create")
    end

    it "routes to #update" do
      put("/talklinks/1").should route_to("talklinks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/talklinks/1").should route_to("talklinks#destroy", :id => "1")
    end

  end
end
