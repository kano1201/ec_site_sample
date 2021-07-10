class CreateSnaps < ActiveRecord::Migration[5.2]
  def change
    create_table :snaps do |t|
      t.string :user_name
      t.integer :user_id
      t.string :snap_image_id
      t.text :snap_comment

      t.timestamps
    end
  end
end
