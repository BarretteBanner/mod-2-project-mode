class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :display_name
      t.string :bio
      t.integer :age
      t.string :password
    end
  end
end
