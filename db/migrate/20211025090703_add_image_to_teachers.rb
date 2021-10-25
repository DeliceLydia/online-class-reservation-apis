class AddImageToTeachers < ActiveRecord::Migration[6.1]
  def change
    add_column :teachers, :image, :string
  end
end
