require 'rails_helper'

describe "get most comments", :type => :request do

  before do
    creature = FactoryGirl.create(:creature, id: 1)
    creature2 = FactoryGirl.create(:creature, id: 2)
    comment = FactoryGirl.create(:comment, creature_id: 1)
    comment2 = FactoryGirl.create(:comment, creature_id: 1)
    get '/creatures/most_comments'
  end

  it 'returns creature with most comments' do
    expect(JSON.parse(response.body).size).to eq 1
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end

end
