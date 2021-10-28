class RemoveCreatedAtFromTeachers < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :created_at, :datetime
  end
end
