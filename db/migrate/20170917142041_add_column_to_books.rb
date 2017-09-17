class AddColumnToBooks < ActiveRecord::Migration[5.1]
  def change
    unless column_exists? :books , :id, :integer
      add_column :books, :id, :integer
    end

  end
end
