require 'rails_helper'

describe "get comments route", :type => :request do

  before do
    creature = FactoryGirl.create(:creature, id: 1)
    comment = FactoryGirl.create(:comment, creature_id: 1)
    get "/creatures/#{creature.id}/comments"
  end

  it 'returns all comments' do
    expect(JSON.parse(response.body).size).to eq 1
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end

end
