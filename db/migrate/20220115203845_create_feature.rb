class CreateFeature < ActiveRecord::Migration[7.0]
  def change
    create_table :features do |t|
      t.references :feature_category, null: false, foreign_key: true
      t.float :estimate
      t.integer :status
      t.float :current_hours
      t.string :name
      t.integer :trello_card

      t.timestamps
    end
  end
end
