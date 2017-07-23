require 'rails_helper'

describe "patch creatures route", :type => :request do

  before do
    creature = FactoryGirl.create(:creature)
    patch "/creatures/#{creature.id}", params: { kind: 'alien' }
  end

  it 'returns all reviews' do
    expect(JSON.parse(response.body)['message']).to eq "Your creature has been updated!"
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :success
  end
end
