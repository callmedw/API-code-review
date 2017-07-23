require "rails_helper"

describe 'post a comment exception route', :type => :request do
  before do
    creature = FactoryGirl.create(:creature)
    post "/creatures/#{creature.id}/comments", params: { :author => 'Test' }
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end
