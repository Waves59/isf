class CreateIntuitors < ActiveRecord::Migration[5.1]
  def change
    create_table :intuitors do |t|
      t.string :photo
      t.string :first_name
      t.string :last_name
      t.string :diploma
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
