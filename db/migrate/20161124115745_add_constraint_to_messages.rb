class AddConstraintToMessages < ActiveRecord::Migration[5.0]
  def change
    change_column_null :messages, :text, false
  end
end
