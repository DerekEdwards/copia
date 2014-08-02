class CreateComrades < ActiveRecord::Migration
  def change
    create_table :comrades do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
