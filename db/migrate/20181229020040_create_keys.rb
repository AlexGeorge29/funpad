class CreateKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :keys do |t|
      t.string :name
      t.references :pad, foreign_key: true
      t.string :sample
      t.boolean :empty
      t.text :description
      t.boolean :loop

      t.timestamps
    end
  end
end
