class RemUserRefToChats < ActiveRecord::Migration
  def change
    remove_reference :chats, :user
  end
end
