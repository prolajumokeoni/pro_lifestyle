class Article < ApplicationRecord

  belongs_to :category
  belongs_to :user
  has_many :votes, dependent: :destroy
  has_one_attached :article_photo
  after_create :self_vote
  
  def self_vote
    self.votes.create(:user => self.user)
   end
end
