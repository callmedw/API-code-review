class AnimalReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :creature do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :coloring
    end

    create_table :comments do |t|
      t.string :author
      t.string :comment
    end
  end
end
