class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fecha
      t.boolean :publico

      t.timestamps
    end
  end
end
