class AddColumnToKeys < ActiveRecord::Migration[5.2]
  def change
    add_column :keys, :note, :string
    add_column :keys, :keyboard, :string
  end
end
