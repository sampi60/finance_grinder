class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :kind, null: false
      t.references :parent, index: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
