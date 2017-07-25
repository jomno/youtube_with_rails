class AddCategoryToVideo < ActiveRecord::Migration
  def change
    add_reference :videos, :category, index: true, foreign_key: true
  end
end
