class CreatePads < ActiveRecord::Migration[5.2]
  def change
    create_table :pads do |t|
      t.string :name
      t.string :picture
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
