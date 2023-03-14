class CreateMonitems < ActiveRecord::Migration[7.0]
  def change
    create_table :monitems do |t|
      t.references :item, null: false, foreign_key: true
      t.string :name
      t.string :alias_name
      t.string :nation
      t.string :birthplace
      t.string :occupation
      t.text :biographical_text

      t.timestamps
    end
  end
end
