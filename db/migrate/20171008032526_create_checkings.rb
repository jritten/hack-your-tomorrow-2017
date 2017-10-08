class CreateCheckings < ActiveRecord::Migration[5.1]
  def change
    create_table :checkings do |t|
      t.integer :user_id
      t.integer :operating_company_identifier
      t.integer :product_code
      t.integer :primary_identifier

      t.timestamps
    end
  end
end
