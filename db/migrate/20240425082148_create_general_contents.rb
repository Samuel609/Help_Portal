class CreateGeneralContents < ActiveRecord::Migration[7.1]
  def change
    create_table :general_contents do |t|
      t.string :title, null: false
      t.string :categories, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end
