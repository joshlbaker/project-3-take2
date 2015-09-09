class AddLinkToMoods < ActiveRecord::Migration
  def change
    add_column :moods, :link, :string
  end
end
