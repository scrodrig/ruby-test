require 'rails_helper'

RSpec.describe PeopleController, type: :controller do
  describe "GET #index" do
    context "to be successful" do
      it "get success response" do
        get :index
        expect(response).to be_success
      end
      it "get a array" do
        get :index
        expect(JSON(response.body)).to be_kind_of(Array)
      end
      it "get no empty array" do
        get :index
        expect(JSON(response.body)).not_to be_empty
      end
    end
  end
end
