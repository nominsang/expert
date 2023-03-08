class Item < ApplicationRecord
  validates :name, :sex, :nation, :birthday, :occupation, presence: true
end
