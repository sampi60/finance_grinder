require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :categories }

  let(:user) { create :user }

  it 'has a valid factory' do
    expect(user).to be_valid
  end
end
