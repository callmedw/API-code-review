class AddCreatureIdToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :creature_id, :integer
  end
end
