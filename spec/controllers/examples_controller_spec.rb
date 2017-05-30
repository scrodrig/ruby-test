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

  # describe "GET #index" do
  #   it "returns a success response" do
  #
  #   end
  # end
  #
  # describe "PUT #update" do
  #   context "with valid params" do
  #     let(:new_attributes) {
  #       {"created_at" => "2016-05-25 10:23:54", "updated_at" => "2016-05-25 10:23:54"}
  #     }
  #
  #     it "renders a JSON response with the example" do
  #       put :update, params: {id: Example.last.id, example: new_attributes}
  #       expect(response).to have_http_status(:ok)
  #       expect(response.content_type).to eq('application/json')
  #     end
  #   end
  # end
  #
  # describe "DELETE #destroy" do
  #   it "destroys the requested example" do
  #     expect {
  #       delete :destroy, params: {id: Example.last.id}
  #     }.to change(Example, :count).by(-1)
  #   end
  # end

end
