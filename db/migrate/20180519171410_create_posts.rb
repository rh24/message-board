class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.datetime :date_published
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
