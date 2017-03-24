class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates_presence_of :user_id, :date, :amount
  validates_numericality_of :amount, precision: 10, scale: 2
end
