class CreateGroupConversions < ActiveRecord::Migration[7.0]
  def change
    create_table :group_conversions do |t|
      t.references :group, null: false, foreign_key: true
      t.references :conversion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
