class Group < ActiveRecord::Base
  belongs_to :user
  has_many :blogs
  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user
  validates :title, presence: true
end
