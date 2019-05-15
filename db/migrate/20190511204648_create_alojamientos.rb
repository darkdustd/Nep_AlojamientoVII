class CreateAlojamientos < ActiveRecord::Migration[5.1]
  def change
    create_table :alojamientos do |t|
      t.string :nombre
      t.string :direccion
      t.float :precio, :limit => 53
      t.string :descipcion
      t.string :tipo
      t.string :imagen
      t.float :latitud, :limit => 53, :null => true
      t.float :longitud, :limit => 53, :null => true
      t.integer :cercania
      t.boolean :wifi
      t.boolean :bano_privado
      t.boolean :alimentacion
      t.boolean :parqueadero

      t.timestamps
    end
  end
end
