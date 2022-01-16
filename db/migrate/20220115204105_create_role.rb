class CreateRole < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.float :cost_per_hour
      t.integer :velocity
      t.string :name

      t.timestamps
    end
  end
end
