class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :legal_participant_identifier
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :tokens
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
