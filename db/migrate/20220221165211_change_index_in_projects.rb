class ChangeIndexInProjects < ActiveRecord::Migration[6.1]
  def change
    add_reference :projects, :profile, index: true, foreign_key:true
  end
end
