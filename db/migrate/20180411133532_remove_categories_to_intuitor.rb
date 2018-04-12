class RemoveCategoriesToIntuitor < ActiveRecord::Migration[5.1]
  def change
    remove_reference :intuitors, :categories, foreign_key: true
  end
end
