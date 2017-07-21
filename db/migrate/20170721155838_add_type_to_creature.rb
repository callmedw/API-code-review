class AddTypeToCreature < ActiveRecord::Migration[5.1]
  def change
    add_column :creature, :type, :string
  end
end
