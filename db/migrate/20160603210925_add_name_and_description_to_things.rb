class AddNameAndDescriptionToThings < ActiveRecord::Migration
  def change
    add_column :things, :name, :text
    add_column :things, :description, :text
  end
end
