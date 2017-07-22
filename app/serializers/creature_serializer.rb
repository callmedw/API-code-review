class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :kind, :coloring
end
