# frozen_string_literal: true

class CreateConversions < ActiveRecord::Migration[7.0]
  def change
    create_table :conversions do |t|
      t.decimal :amount, default: 0.0
      t.string :name, null: false
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
