class AddColumnToKey < ActiveRecord::Migration[5.2]
  def change
    add_column :keys, :number, :integer
    add_column :keys, :type, :string
  end
end
