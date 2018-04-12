class RemoveCategoryToIntuitor < ActiveRecord::Migration[5.1]
  def change
    remove_reference :intuitors, :category, foreign_key: true
  end
end
