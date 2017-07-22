require 'rails_helper'

describe 'get a creature route', :type => :request do

  before do
    get '/creatures/31'
  end

  it 'returns an error if no creature is found' do
    expect(response).to have_http_status(:not_found)
  end
end
