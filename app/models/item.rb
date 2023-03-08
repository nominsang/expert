class Item < ApplicationRecord
  validates :name, :sex, :nation, :birthday, :occupation, presence: true
  has_one_attached :avatar
  paginates_per 5
  def self.ransackable_attributes(auth_object = nil)
    ["alias_name", "biographical_text", "birthday", "birthplace", "deathdate", "name", "nation", "occupation", "sex"]
  end
end
