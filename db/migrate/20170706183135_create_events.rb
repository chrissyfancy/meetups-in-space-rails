class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
