class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
