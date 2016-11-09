class CreateTdLists < ActiveRecord::Migration[5.0]
  def change
    create_table :td_lists do |t|
      t.string :name
      t.boolean :complete

      t.timestamps
    end
  end
end
