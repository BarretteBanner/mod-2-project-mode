class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :user_id
      t.integer :channel_id
    end
  end
end
