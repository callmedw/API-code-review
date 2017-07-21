class Creature < ApplicationRecord
  has_many :comments, dependent: :destroy
end
