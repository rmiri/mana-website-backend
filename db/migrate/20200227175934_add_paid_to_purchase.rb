class AddPaidToPurchase < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :paid?, :boolean, default: false
  end
end
