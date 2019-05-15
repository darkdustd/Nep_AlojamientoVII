class AddAlojamientoToPagos < ActiveRecord::Migration[5.1]
  def change
    add_column :pagos, :alojamiento, :reference
  end
end
