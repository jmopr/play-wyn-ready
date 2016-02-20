class AddGameRefToChats < ActiveRecord::Migration
  def change
    add_reference :chats, :game, index: true, foreign_key: true
  end
end
