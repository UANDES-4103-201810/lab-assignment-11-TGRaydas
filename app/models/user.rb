class User < ApplicationRecord
  validates :username, length: {maximum: 20}
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  has_many :messages
end
