class AddMailToIntuitor < ActiveRecord::Migration[5.1]
  def change
    add_column :intuitors, :mail, :string
  end
end
