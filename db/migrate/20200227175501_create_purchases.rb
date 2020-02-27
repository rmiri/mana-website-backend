class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :user
      t.references :product
      t.integer :instalment
      t.boolean :promotion?

      t.timestamps
    end
  end
end
