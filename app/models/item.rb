class Item < ApplicationRecord
  validates :name, :sex, :nation, :occupation, presence: true
  has_one_attached :avatar
  paginates_per 10
  def self.ransackable_attributes(auth_object = nil)
    ["alias_name", "biographical_text", "birthday", "birthplace", "deathdate", "name", "nation", "occupation", "sex"]
  end
  has_many :monitems
end
