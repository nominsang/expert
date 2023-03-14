class ChangeBirthdayToStringInItems < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :birthday, :string
    change_column :items, :deathdate, :string
  end
end
