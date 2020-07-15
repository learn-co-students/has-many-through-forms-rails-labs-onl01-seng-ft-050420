class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  accepts_nested_attributes_for :categories, reject_if: proc {|attr| attr['name'].blank?}


  def categories_attributes(attr)
      cat = Category.find_or_create_by(attr)
      self.categories << cat
  end

  def all_users
    array = []
    self.users.each {|u| array << u if !array.include?(u)}
    array
  end
end
