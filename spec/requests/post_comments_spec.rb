require 'rails_helper'

describe "post comment route", :type => :request do

  before do
    creature = FactoryGirl.create(:creature, id: 1)
    post "/creatures/#{creature.id}/comments", params: { author: 'Testing', comment: 'test comment', creature_id: 1 }
  end

  it 'returns created status' do
    expect(response).to have_http_status 201
  end
end
