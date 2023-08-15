class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :name
      t.integer :chassi_id
      t.string :available_colors, array: true

      t.timestamps
    end
  end
end
