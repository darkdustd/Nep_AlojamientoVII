class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.string :nombre_tarjeta
      t.integer :numero_tarjeta, :limit => 10
      t.integer :cvv_tarjeta, :limit => 3
      t.date :fecha_tarjeta

      t.timestamps
    end
  end
end
