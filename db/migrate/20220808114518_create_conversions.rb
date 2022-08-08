class CreateConversions < ActiveRecord::Migration[7.0]
  def change
    create_table :conversions do |t|
      t.integer :author_id , null: false # if there is an issue with the db please check this
      t.decimal :amount, default: 0.0
      t.string :name, null: false
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
