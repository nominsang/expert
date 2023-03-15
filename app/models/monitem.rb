class Monitem < ApplicationRecord
  belongs_to :item
  validates :biographical_text, presence: true
end
