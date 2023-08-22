class AddStatusToModels < ActiveRecord::Migration[7.0]
  def change
    add_column :models, :status, :string, default: 'active', null: false
  end
end
