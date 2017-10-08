class CreateSavings < ActiveRecord::Migration[5.1]
  def change
    create_table :savings do |t|
      t.string :name
      t.string :account_type
      t.string :operating_company_identifier
      t.string :product_code
      t.string :primary_identifier
      t.string :transaction_history
      t.references :user

      t.timestamps
    end
  end
end
