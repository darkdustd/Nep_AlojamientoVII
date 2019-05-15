class AddUserToPagos < ActiveRecord::Migration[5.1]
  def change
    add_column :pagos, :user, :reference
  end
end
