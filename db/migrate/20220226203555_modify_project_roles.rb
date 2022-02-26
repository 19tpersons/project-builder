class ModifyProjectRoles < ActiveRecord::Migration[7.0]
  def change
    drop_table :project_employees
    drop_table :employee_roles

    add_reference :roles, :project, foreign_key: true
    add_reference :roles, :employee, foreign_key: true


    add_column :activities, :estimated_percentage_amount, :decimal
    add_column :activities, :estimated_hours_amount, :decimal
    remove_column :activities, :estimated_amount, :decimal
  end
end
