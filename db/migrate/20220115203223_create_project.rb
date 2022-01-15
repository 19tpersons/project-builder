class CreateProject < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.timestamp :start_date
      t.string :name
      t.string :product_owner
      t.float :contingency

      t.timestamps
    end
  end
end
