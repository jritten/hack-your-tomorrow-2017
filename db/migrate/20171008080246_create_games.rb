class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.integer :transfer_amount
      t.integer :total_saved
      t.integer :tokens
      t.references :user

      t.timestamps
    end
  end
end
