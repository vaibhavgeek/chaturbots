class CreatePaymentD < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :customer_id, :integer
    add_column :users, :plan_id, :string
    add_column :users, :subscription_id, :string
    add_column :users, :status, :string
    add_column :users, :quantity, :integer
    add_column :users, :start_at, :integer 
    add_column :users, :end_at, :integer
    add_column :users, :charge_at, :integer
  end
end
