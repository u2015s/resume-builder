class ChangeFieldtypeToStringInProjects < ActiveRecord::Migration[6.1]
  def change
    change_column :projects, :project_url, :string
    change_column :projects, :tech_stack, :string
  end
end
