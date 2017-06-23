class AddClassToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :class, :integer
  end
end
