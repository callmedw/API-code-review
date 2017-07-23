require 'rails_helper'

describe "post creature route", :type => :request do

  before do
    post '/creatures', params: { :name => 'test', :age => 'test', :gender => 'test', :coloring => 'test', :kind => 'test' }
  end

  it 'returns created status' do
    expect(response).to have_http_status 201
  end
end
