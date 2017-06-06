class ChangeValuesToProyect < ActiveRecord::Migration
  def change
  	change_column :proyects, :client, :integer
  end
end
