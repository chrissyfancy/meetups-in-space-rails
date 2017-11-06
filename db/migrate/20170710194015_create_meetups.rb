class CreateMeetups < ActiveRecord::Migration[5.0]
  def change
    create_table :meetups do |t|
      t.belongs_to :event
      t.belongs_to :topic
      t.timestamps
    end
  end
end
