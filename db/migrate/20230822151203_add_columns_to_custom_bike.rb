class AddColumnsToCustomBike < ActiveRecord::Migration[7.0]
  def change
    add_column :custom_bikes, :chassi_id, :integer
    add_column :custom_bikes, :model_id, :integer
    add_column :custom_bikes, :color, :string
  end
end
