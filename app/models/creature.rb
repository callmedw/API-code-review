class Creature < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :name, :age, :gender, :coloring, :kind, presence: true

  scope :most_comments, -> {(
    select("creatures.id, creatures.name, creatures.age, creatures.gender, creatures.coloring, creatures.kind, count(comments.id) as comments_count")
    .joins(:comments)
    .group("creatures.id")
    .order("comments_count DESC")
    .limit(5)
    )}
end
