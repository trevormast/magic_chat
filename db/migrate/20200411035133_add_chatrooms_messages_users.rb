class AddChatroomsMessagesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms do |t|
      t.string :topic
      t.timestamps
    end

    create_table :messages do |t|
      t.string :body
      t.integer :user_id
      t.integer :chatroom_id
      t.timestamps
    end

    create_table :users do |t|
      t.string :username
      t.timestamps
    end
  end
end
