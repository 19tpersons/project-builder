class CreateFeatureCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :feature_categories do |t|
      t.references :project, null: false, foreign_key: true
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
