class CreateMeetups < ActiveRecord::Migration[5.0]
  def change
    create_table :meetups do |t|
      t.belongs_to :event, null: false
      t.belongs_to :topic, null: false
      t.timestamps
    end
  end
end
