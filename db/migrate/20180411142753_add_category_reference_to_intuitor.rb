class AddCategoryReferenceToIntuitor < ActiveRecord::Migration[5.1]
  def change
    add_reference :intuitors, :category, foreign_key: true
  end
end
