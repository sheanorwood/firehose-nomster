class CreatePhotos < ActiveRecord::Migration
  def change
    create_table   :photos do | t |
    t.text  :caption
    t.integer  :user_id
    t.integer  :place_id
    t.string  :picture
    t.timestamps
    end
  add_index :photos, [ :place_id, :caption, :picture]
  end
end
