class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :passwordDigest
      t.float :phone

      t.timestamps null: false
    end
  end
end
