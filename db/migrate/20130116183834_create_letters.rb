class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
