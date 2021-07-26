require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:votes) }
  it { should have_many(:articles) }
  it { should have_many(:categories) }
end
