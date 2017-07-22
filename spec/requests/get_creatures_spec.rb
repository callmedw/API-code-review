require 'rails_helper'

describe "get creatures route", :type => :request do
  let!(:creatures) {FactoryGirl.create_list(:creature, 20)}

  before { get '/creatures'}

  it 'returns all creatures' do
    expect(JSON.parse(response.body).size).to eq 20
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end

end
