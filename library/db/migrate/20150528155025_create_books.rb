class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :price
      t.string :rakeno
      t.string :subjectcode
      t.date :idate
      t.date :rdate

      t.timestamps null: false
    end
  end
end
