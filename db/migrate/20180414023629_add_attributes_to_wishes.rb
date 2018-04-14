class AddAttributesToWishes < ActiveRecord::Migration[5.1]
  def change
    add_column :wishes, :title, :string
    add_column :wishes, :description, :text
    add_column :wishes, :location, :string
  end
end
