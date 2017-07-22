require 'rails_helper'
describe "delete creature route", :type => :request do

  before do
    creature = FactoryGirl.create(:creature)
    delete "/creatures/#{creature.id}"
  end

  it 'destroys creature' do
    expect(response).to have_http_status 200
  end
end
