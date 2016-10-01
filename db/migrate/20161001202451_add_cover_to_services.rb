class AddCoverToServices < ActiveRecord::Migration
  def change
  	add_attachment :services,:cover
  end
end
