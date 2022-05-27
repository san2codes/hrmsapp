class RenameEmployeeIdColumnInEmployees < ActiveRecord::Migration[7.0]
  def change
    rename_column :employees, :employee_id, :employee_unique_id
    change_column :employees, :employee_unique_id, :string
  end
end
