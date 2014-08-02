class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :desc
      t.string :category
      t.text :secret
      t.integer :comrade_id

      t.timestamps
    end
  end
end
