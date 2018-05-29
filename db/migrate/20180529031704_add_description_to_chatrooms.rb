class AddDescriptionToChatrooms < ActiveRecord::Migration[5.2]
  def change
    add_column :chatrooms, :description, :text
  end
end
