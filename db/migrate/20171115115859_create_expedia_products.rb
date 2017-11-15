class CreateExpediaProducts < ActiveRecord::Migration
  def change
    create_table :expedia_products do |t|
      t.string :productId
      t.text :title
      t.text :description
      t.text :operator
      t.text :link
      t.text :historic_rankings

      t.timestamps null: false
    end
  end
end
