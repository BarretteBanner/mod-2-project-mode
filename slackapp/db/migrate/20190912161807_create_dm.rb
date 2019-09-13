class CreateDm < ActiveRecord::Migration[6.0]
  def change
    create_table :dms do |t|
      t.string :name
      t.integer :user1
      t.integer :user2
      t.string :user1name
      t.string :user2name
    end
  end
end
