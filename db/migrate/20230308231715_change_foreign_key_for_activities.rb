class ChangeForeignKeyForActivities < ActiveRecord::Migration[7.0]
  def change
    rename_column :activities, :user_id, :author_id
  end
end
