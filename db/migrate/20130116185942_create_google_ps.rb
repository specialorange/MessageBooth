class CreateGooglePs < ActiveRecord::Migration
  def change
    create_table :google_ps do |t|

      t.timestamps
    end
  end
end
