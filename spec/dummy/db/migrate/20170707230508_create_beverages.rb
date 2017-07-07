class CreateBeverages < ActiveRecord::Migration[5.1]
  def change
    create_table :beverages do |t|
      t.float :abv
      t.string :name
      t.string :beverage_type
      t.references :producer, foreign_key: true

      t.timestamps
    end
  end
end
