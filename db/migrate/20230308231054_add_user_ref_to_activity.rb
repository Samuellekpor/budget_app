class AddUserRefToActivity < ActiveRecord::Migration[7.0]
  def change
    add_reference :activities, :user, null: false, foreign_key: true
  end
end
