class ChangeTableNameToPlural < ActiveRecord::Migration[5.1]
  def change
    rename_table :creature, :creatures
  end

end
