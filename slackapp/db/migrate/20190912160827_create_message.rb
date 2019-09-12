class CreateMessage < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :dm_id
      t.integer :user_id
    end
  end
end
