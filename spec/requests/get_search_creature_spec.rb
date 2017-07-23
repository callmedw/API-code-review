require 'rails_helper'

describe "get search route", :type => :request do

  before do
    creature = FactoryGirl.create(:creature, kind: 'test')
    get '/creatures/search?kind=test'
  end

  it 'returns creatures by kind' do
    expect(JSON.parse(response.body)['kind']).to eq 'test'
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end

end
