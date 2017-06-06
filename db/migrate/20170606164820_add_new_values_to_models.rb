class AddNewValuesToModels < ActiveRecord::Migration
  def change
    add_column :models, :city, :string
  end
end
