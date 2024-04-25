class CreateGeneralContents < ActiveRecord::Migration[7.1]
  def change
    create_table :general_contents do |t|
      t.string :title
      t.string :categories
      t.string :description

      t.timestamps
    end
  end
end
