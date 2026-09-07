class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :status, null: false, default: "to_read"
      t.timestamps
    end

    add_index :books, :status
  end
end
