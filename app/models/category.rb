class Category < ApplicationRecord
  KINDS = %w( income expense )

  belongs_to :user
  belongs_to :parent, class_name: 'Category'
  has_many :children, class_name: 'Category', foreign_key: :parent_id

  validates_presence_of :name, :kind, :user_id
  validates :kind, inclusion: { in: KINDS }
end
