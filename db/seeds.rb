class Seed

  def self.begin
    seed = Seed.new
    seed.generate_creatures
  end

  def generate_creatures
    30.times do |i|
      creature = Creature.create!(
        name: Faker::Witcher.monster,
        age: Faker::Number.digit,
        gender: Faker::Demographic.sex,
        coloring: Faker::Color.color_name,
        kind: Faker::Team.creature
      )
      3.times do |i|
        creature.comments.create!(
          author: Faker::ElderScrolls.creature,
          comment: Faker::DrWho.quote)
      end
    end
  end
end

Seed.begin

p "Created #{Creature.count} creatures"
