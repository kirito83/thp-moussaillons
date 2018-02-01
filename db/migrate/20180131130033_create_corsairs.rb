class CreateCorsairs < ActiveRecord::Migration[5.1]
  def change
    create_table :corsairs do |t|
      t.string :first_name
      t.integer :age
      t.string :likeness
      t.text :bio
      t.timestamps
    end
    add_column :corsairs, :pseudo_slack, :string
    add_column :corsairs, :pseudo_github, :string
  end
end
