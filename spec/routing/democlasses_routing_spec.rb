require "rails_helper"

RSpec.describe DemoclassesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/democlasses").to route_to("democlasses#index")
    end

    it "routes to #new" do
      expect(:get => "/democlasses/new").to route_to("democlasses#new")
    end

    it "routes to #show" do
      expect(:get => "/democlasses/1").to route_to("democlasses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/democlasses/1/edit").to route_to("democlasses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/democlasses").to route_to("democlasses#create")
    end

    it "routes to #update" do
      expect(:put => "/democlasses/1").to route_to("democlasses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/democlasses/1").to route_to("democlasses#destroy", :id => "1")
    end

  end
end
