class CreateAsistencia < ActiveRecord::Migration[5.1]
  def change
    create_table :asistencia do |t|

      t.timestamps
    end
  end
end
