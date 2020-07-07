class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(attributes)
    attributes.values.each do |category_params|
      category = Category.find_or_create_by(category_params) unless category_params[:name].blank?
      self.post_categories.build(category: category) unless self.categories.include?(category)
    end
  end

end
