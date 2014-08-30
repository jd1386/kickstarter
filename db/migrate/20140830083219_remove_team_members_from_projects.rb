class RemoveTeamMembersFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :team_members, :string
  end
end
