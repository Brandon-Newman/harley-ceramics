class AddOfficialColorToColor < ActiveRecord::Migration[7.0]
  def change
    add_column :colors, :official_color, :string, default: 'Y', null: false
  end
end
