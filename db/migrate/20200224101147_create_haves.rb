class CreateHaves < ActiveRecord::Migration[5.2]
  def change
    create_table :haves do |t|
      t.integer :thre_id
      t.integer :category_id

      t.timestamps
    end
  end
end
