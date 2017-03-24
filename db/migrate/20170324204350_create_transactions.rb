class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true, null: false
      t.references :category, foreign_key: true
      t.date :date, null: false
      t.decimal :amount, null: false, default: 0, precision: 10, scale: 2
      t.string :note
      t.timestamps
    end
  end
end
