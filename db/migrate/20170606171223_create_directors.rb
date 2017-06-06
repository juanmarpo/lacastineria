class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.string :contact
      t.string :email

      t.timestamps null: false
    end
  end
end
