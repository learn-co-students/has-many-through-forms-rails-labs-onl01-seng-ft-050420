class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_id=(id)
    self.user = User.find(id)
  end

  def user_attributes=(attributes)
    user = User.find_or_create_by(attributes) unless attributes[:username].blank?
    self.user = user 
  end

end
