class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :post
      t.belongs_to :account
      t.text :body

      t.timestamps
    end
  end
end
