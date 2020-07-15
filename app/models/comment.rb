class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: proc {|attr| attr['username'].blank?}

  def user_attributes(attr)
    self.user = User.create(attr)
    self.save
  end
end
