class CreateRes < ActiveRecord::Migration[5.2]
  def change
    create_table :res do |t|
      t.integer :user_id
      t.integer :thre_id
      t.string :body

      t.timestamps
    end
  end
end
