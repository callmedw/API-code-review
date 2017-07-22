require "rails_helper"

describe Creature do
  it { should have_many :comments }
  it { should validate_presence_of :name }
  it { should validate_presence_of :age }
  it { should validate_presence_of :gender }
  it { should validate_presence_of :coloring }
  it { should validate_presence_of :kind }
end
