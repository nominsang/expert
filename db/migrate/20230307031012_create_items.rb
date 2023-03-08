class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :alias_name
      t.string :sex
      t.string :nation
      t.date :birthday
      t.date :deathdate
      t.string :birthplace
      t.string :occupation
      t.text :biographical_text

      t.timestamps
    end
  end
end
