class CreateThreCates < ActiveRecord::Migration[5.2]
  def change
    create_table :thre_cates do |t|
      t.integer :thre_id
      t.integer :category_id

      t.timestamps
    end
  end
end
