class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.belongs_to :post
      t.belongs_to :account
      t.string :action

      t.timestamps
    end
  end
end
