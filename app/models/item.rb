class Item < ApplicationRecord
  validates :name, :sex, :nation, :birthday, :occupation, presence: true
  has_one_attached :avatar
end
