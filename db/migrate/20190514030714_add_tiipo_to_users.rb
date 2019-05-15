class AddTiipoToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tiipo, :reference
  end
end
