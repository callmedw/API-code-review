FactoryGirl.define do
  factory :creature do
    name 'name'
    age 'age'
    gender 'gender'
    coloring 'coloring'
    kind 'kind'
  end

  factory :comment do
    author 'author'
    comment 'comment'
  end
end
