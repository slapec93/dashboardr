require "rails_helper"

RSpec.describe DataSourceTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/data_source_types").to route_to("data_source_types#index")
    end

    it "routes to #new" do
      expect(:get => "/data_source_types/new").to route_to("data_source_types#new")
    end

    it "routes to #show" do
      expect(:get => "/data_source_types/1").to route_to("data_source_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/data_source_types/1/edit").to route_to("data_source_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/data_source_types").to route_to("data_source_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/data_source_types/1").to route_to("data_source_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/data_source_types/1").to route_to("data_source_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/data_source_types/1").to route_to("data_source_types#destroy", :id => "1")
    end

  end
end
