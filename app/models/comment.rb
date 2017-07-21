class Comment < ApplicationRecord
  belongs_to :creature
  validates :author, :comment, presence: true
end
