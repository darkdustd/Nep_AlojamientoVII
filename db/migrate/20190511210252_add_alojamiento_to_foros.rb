class AddAlojamientoToForos < ActiveRecord::Migration[5.1]
  def change
    add_column :foros, :alojamiento, :reference
  end
end
