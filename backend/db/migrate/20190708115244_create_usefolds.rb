class CreateUsefolds < ActiveRecord::Migration[5.2]
  def change
    create_table :usefolds do |t|
      t.references :user, foreign_key: true
      t.references :folder, foreign_key: true

      t.timestamps
    end
  end
end
