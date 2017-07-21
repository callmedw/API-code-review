class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :creatures, :type, :kind
  end
end
