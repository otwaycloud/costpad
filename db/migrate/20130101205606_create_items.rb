class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :category
      t.string :unit
      t.decimal :supply_price
      t.decimal :labour_price
      t.decimal :margin
      t.decimal :sum_price

      t.timestamps
    end
  end
end
