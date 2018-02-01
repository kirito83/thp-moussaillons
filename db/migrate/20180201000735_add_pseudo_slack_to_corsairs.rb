class AddPseudoSlackToCorsairs < ActiveRecord::Migration[5.1]
  def change
    add_column :corsairs, :pseudo_slack, :string
  end
end
