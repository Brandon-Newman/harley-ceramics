class RenameStatusToOfficialColor < ActiveRecord::Migration[7.0]
  def change
    rename_column :colors, :status, :official_color
  end
end
