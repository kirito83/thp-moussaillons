class AddPseudoGithubToCorsairs < ActiveRecord::Migration[5.1]
  def change
    add_column :corsairs, :pseudo_github, :string
  end
end
