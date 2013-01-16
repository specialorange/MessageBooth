class CreateGooglePlus < ActiveRecord::Migration
  def change
    create_table :google_plus do |t|

      t.timestamps
    end
  end
end
