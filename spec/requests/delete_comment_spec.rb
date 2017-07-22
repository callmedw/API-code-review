require 'rails_helper'
describe "delete comment route", :type => :request do

  before do
    creature = FactoryGirl.create(:creature, id: 1)
    comment = FactoryGirl.create(:comment, creature_id: 1)
    delete "/creatures/1/comments/#{comment.id}"
  end

  it 'destroys comment' do
    expect(response).to have_http_status 200
  end
end
