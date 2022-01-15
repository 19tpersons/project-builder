class CreateActivity < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.references :role, null: false, foreign_key: true
      t.string :name
      t.float :estimated_amount

      t.timestamps
    end
  end
end
