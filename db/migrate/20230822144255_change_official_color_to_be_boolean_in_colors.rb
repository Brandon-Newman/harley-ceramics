class ChangeOfficialColorToBeBooleanInColors < ActiveRecord::Migration[7.0]
  def change
    change_column :colors, :official_color, :boolean, default: true
  end
end
