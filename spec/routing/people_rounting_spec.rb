require "rails_helper"

RSpec.describe PeopleController, type: :routing do
  describe "routing" do
    it "people to #index" do
      expect(:get => "/people").to route_to("people#index")
    end
  end
end
