class AddUserIdToRooms < ActiveRecord::Migration
  def change
  	#add column to TABLE, WHAT IT IS, WHAT TYPE
  	add_column :rooms, :user_id, :integer
  end
end
