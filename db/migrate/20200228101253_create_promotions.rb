class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: true, foreign_key: true
      t.references :service, null: true, foreign_key: true
      t.float :discount
      t.date :start_date
      t.date :end_date
      t.string :banner_image

      t.timestamps
    end
  end
end
