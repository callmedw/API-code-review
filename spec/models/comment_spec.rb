require "rails_helper"

describe Comment do
  it { should belong_to :creature }
  it { should validate_presence_of :author }
  it { should validate_presence_of :comment }
end
