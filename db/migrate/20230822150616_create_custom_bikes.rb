class CreateCustomBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_bikes do |t|


      t.timestamps
    end
  end
end
