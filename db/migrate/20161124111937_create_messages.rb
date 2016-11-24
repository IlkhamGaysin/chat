class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :text
      t.references :room, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
