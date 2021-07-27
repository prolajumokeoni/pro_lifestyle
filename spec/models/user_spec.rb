require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:votes) }
  it { should have_many(:articles) }
  it { should have_many(:categories) }
  
  it 'is not valid with nil values' do
    subject.email = nil
    expect(subject).to_not be_valid
  end
end
