require 'rails_helper'

describe "post creature route", :type => :request do

  before do
    post '/creatures', params: { :kind => ""}
  end

  it 'returns the kind' do
    expect(JSON.parse(response.body)['message']).to eq "Validation failed: Name can't be blank, Age can't be blank, Gender can't be blank, Coloring can't be blank, Kind can't be blank"
  end

  it 'returns created status' do
    expect(response).to have_http_status :unprocessable_entity
  end
end
