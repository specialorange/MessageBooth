class RemoveGooglePlus < ActiveRecord::Migration
  def change
    drop_table :google_plus
  end
end
