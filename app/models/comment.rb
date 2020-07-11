class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
 
  
  def user_attributes=(user_attributes)
    user_attributes.values.each do |user_attribute|
      if user_attribute.present?
        user = User.find_or_create_by(username: user_attribute)
        self.user = user
      end
    end
  end

    # def user=(user_attributes)
    #   #"user"=>{"username"=>"New New User"}
    #   user_attributes.values.each do |user_value|
    #     if user_value.present?
    #       user = User.find_or_create_by(username: user_attributes[:username])
    #       self.user = user
    #     end
    #   end
    # end
    
end





