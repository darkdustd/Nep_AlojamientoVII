class CreateForos < ActiveRecord::Migration[5.1]
  def change
    create_table :foros do |t|
      t.string :comentario
      t.float :puntuacion, :limit => 53, :null => true

      t.timestamps
    end
  end
end
