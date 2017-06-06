class CreateCastings < ActiveRecord::Migration
  def change
    create_table :castings do |t|
      t.string :title
      t.string :description
      t.string :payment_type
      t.string :ubication
      t.string :casting_end

      t.timestamps null: false
    end
  end
end
