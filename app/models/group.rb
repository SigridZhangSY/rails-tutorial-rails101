class Group < ActiveRecord::Base
  belongs_to :user
  has_many :blogs
  validates :title, presence: true
end
