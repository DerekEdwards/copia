class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :requestor_id
      t.integer :requestee_id
      t.references :item, index: true
      t.integer :status

      t.timestamps
    end
  end
end
