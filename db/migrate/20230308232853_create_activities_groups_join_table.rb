class CreateActivitiesGroupsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :activities_groups, id: false do |t|
      t.belongs_to :activity
      t.belongs_to :group
    end

    add_index :activities_groups, [:activity_id, :group_id], unique: true
  end
end
