class Creature < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, :age, :gender, :coloring, :kind, presence: true
end
