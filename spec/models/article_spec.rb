require 'rails_helper'

RSpec.describe Article, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:votes) }
  it { should have_many(:votes) }
  it { should have_one_attached(:article_photo) }
end
