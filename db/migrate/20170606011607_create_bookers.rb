class CreateBookers < ActiveRecord::Migration
  def change
    create_table :bookers do |t|
      t.string :name
      t.string :nickname
      t.string :contact
      t.string :email

      t.timestamps null: false
    end
  end
end
