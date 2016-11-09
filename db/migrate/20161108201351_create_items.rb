class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.integer :priority
      t.boolean :complete
      t.belongs_to :td_list

      t.timestamps
    end
  end
end
