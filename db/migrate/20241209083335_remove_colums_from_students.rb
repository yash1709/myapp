class RemoveColumsFromStudents < ActiveRecord::Migration[8.0]
  def change
    remove_column :students, :city, :string
    remove_column :students, :contact, :string
    remove_column :students, :dob, :string
  end
end
