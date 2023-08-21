class CreateModelColorRelationships < ActiveRecord::Migration[7.0]
  def change
    create_table :model_color_relationships do |t|
      t.integer :model_id
      t.integer :color_id

      t.timestamps
    end
  end
end
