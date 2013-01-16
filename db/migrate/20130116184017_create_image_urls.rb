class CreateImageUrls < ActiveRecord::Migration
  def change
    create_table :image_urls do |t|
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
