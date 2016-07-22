module ApplicationHelper
  def mine?(user_id)
    User.find(user_id)==current_user
  end
end
