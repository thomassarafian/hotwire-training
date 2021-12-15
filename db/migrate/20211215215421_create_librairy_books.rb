class CreateLibrairyBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :librairy_books do |t|
      t.string :title
      t.string :status
      t.string :description
      t.datetime :status_date
      t.text :internal_info

      t.timestamps
    end
  end
end
