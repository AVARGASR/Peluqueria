class AddColumnsToDetail < ActiveRecord::Migration
  def change
    add_column :details, :ingreso, :integer
  end
end
