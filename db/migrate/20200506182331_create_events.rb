class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.float :price
      t.text :venue

      t.timestamps
    end
  end
end
