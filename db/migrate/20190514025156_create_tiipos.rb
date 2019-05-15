class CreateTiipos < ActiveRecord::Migration[5.1]
  def change
    create_table :tiipos do |t|
      t.string :nombre
      t.integer :codigo

      t.timestamps
    end
  end
end
