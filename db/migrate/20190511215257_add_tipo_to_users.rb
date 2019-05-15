class AddTipoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tipo, :boolean
  end
end
