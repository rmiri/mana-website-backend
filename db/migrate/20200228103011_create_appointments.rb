class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.string :additional_info
      t.boolean :confirmed?

      t.timestamps
    end
  end
end
