require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:articles) }

  it 'is not valid with nil values' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
