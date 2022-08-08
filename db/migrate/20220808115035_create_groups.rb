# frozen_string_literal: true

class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :icon
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :conversion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
