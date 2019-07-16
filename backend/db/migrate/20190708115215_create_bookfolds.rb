class CreateBookfolds < ActiveRecord::Migration[5.2]
  def change
    create_table :bookfolds do |t|
      t.references :folder, foreign_key: true
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
