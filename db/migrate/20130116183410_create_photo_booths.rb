class CreatePhotoBooths < ActiveRecord::Migration
  def change
    create_table :photo_booths do |t|
      t.string :description
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps
    end
  end
end
