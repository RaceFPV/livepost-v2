class Chatroom < ApplicationRecord
    has_many :chatroom_users
    has_many :users, through: :chatroom_users
    has_many :messages
    
    
  def admin?(user)
    self.chatroom_users.where(admin: "owner").pluck("user_id").include?(user.id)
  end
end
