class AddTransactionidToComments < ActiveRecord::Migration
  def change
    add_column :comments, :transaction_id, :integer
  end
end
