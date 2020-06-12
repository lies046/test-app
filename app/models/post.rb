class Post < ApplicationRecord
  has_many :post_category_relations
  has_many :categories, through: :post_category_relations
  has_rich_text :content
end
