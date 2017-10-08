class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :transfer_amount
      t.integer :user_id
      t.integer :tokens
      t.integer :total_saved

      t.timestamps
    end
  end
end
