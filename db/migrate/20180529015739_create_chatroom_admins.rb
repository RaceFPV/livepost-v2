class CreateChatroomAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :chatroom_admins do |t|
      t.references :chatroom, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
