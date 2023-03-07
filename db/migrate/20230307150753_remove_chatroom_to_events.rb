class RemoveChatroomToEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :chatroom_id
  end
end
