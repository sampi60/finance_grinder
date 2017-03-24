require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it { should belong_to :user }
  it { should belong_to :category }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :date }
  it { should validate_presence_of :amount }
  it { should validate_numericality_of(:amount) }

  let(:transaction) { create :transaction }

  it 'has a valid factory' do
    expect(transaction).to be_valid
  end
end
