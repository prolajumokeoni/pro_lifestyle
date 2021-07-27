class Category < ApplicationRecord
  has_many :articles
  belongs_to :user

  scope :cate, -> { select('id, count(id) as count').group(:id).order('count desc') }
end
