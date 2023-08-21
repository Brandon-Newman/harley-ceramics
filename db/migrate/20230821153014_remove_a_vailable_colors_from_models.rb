class RemoveAVailableColorsFromModels < ActiveRecord::Migration[7.0]
  def change
    remove_column :models, :available_colors
  end
end
