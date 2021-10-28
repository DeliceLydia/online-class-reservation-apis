class RemoveUpdatedAtFromTeachers < ActiveRecord::Migration[6.1]
  def change
    remove_column :teachers, :updated_at, :datetime
  end
end
