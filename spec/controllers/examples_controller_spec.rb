require 'rails_helper'

RSpec.describe ExamplesController, type: :controller do

  let(:valid_attributes) {
    {"id"=> Example.last ? Example.last.id + 1 : 1, "created_at" => "2016-05-24 10:23:54", "updated_at" => "2016-05-24 10:23:54"}
  }

  describe "POST #create" do
    context "with valid params" do
      it "creates and gets a new Example" do
        expect {
          post :create, params: {example: valid_attributes}
        }.to change(Example, :count).by(1)
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(example_url(Example.last))
        get :show, params: {id: Example.last.id}
        expect(response).to be_success
      end
    end
  end
end
