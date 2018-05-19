class ChangeDatePublishedToBeStringInPosts < ActiveRecord::Migration[5.1]
  def change
    change_column :posts, :date_published, :string
  end
end
