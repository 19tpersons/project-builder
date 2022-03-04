class AddEndDateToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :end_date, :datetime
    add_column :features, :status, :integer
  end
end
