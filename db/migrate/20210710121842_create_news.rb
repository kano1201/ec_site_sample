class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.text :news_title
      t.text :news_body
      t.datetime :news_time
      t.integer :user_id

      t.timestamps
    end
  end
end
