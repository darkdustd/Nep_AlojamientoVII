class AddUserToAsistencium < ActiveRecord::Migration[5.1]
  def change
    add_column :asistencia, :user, :reference
  end
end
