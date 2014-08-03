class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :comrade, index: true
      t.text :text

      t.timestamps
    end
  end
end
