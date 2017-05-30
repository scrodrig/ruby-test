require 'rest-client'

class PeopleController < ApplicationController

  def index
    @people = RestClient.get 'https://jigsaw.thoughtworks.net/api/people', {:Authorization => 'be68b68cc63d91d1ba1de01588916f0f', :params => {:home_office => 'Quito'}}
    render json: @people
  end
end
