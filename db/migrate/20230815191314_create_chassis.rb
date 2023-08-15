class CreateChassis < ActiveRecord::Migration[7.0]
  def change
    create_table :chassis do |t|
      t.string :style

      t.timestamps
    end
  end
end
