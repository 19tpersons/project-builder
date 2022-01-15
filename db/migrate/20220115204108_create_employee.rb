class CreateEmployee < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.references :role, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
