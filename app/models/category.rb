class Category < ApplicationRecord
  KINDS = %w( expense income )

  belongs_to :user
  belongs_to :parent, class_name: 'Category'
  has_many :children, class_name: 'Category', foreign_key: :parent_id
  has_many :transactions

  validates_presence_of :name, :kind, :user_id
  validates :kind, inclusion: { in: KINDS }

  default_scope { order :name }
  scope :main, -> { where parent_id: nil }
end
