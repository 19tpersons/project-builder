class AddRolestoRole < ActiveRecord::Migration[7.0]
  def change
    add_column :roles, :role_type, :integer
  end
end
