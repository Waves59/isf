class RemoveIntuitorToCategories < ActiveRecord::Migration[5.1]
  def change
    remove_reference :categories, :intuitor, foreign_key: true
  end
end
