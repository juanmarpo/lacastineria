class CreateProyects < ActiveRecord::Migration
  def change
    create_table :proyects do |t|
      t.string :name
      t.string :proyect_type
      t.integer :director
      t.string :client

      t.timestamps null: false
    end
  end
end
