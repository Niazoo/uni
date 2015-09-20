class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :amount
      t.date :idate
      t.date :rdate

      t.timestamps null: false
    end
  end
end
