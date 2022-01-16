class CreateProjectRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :project_employees do |t|
      t.references :project, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
