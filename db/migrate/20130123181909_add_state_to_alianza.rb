class AddStateToAlianza < ActiveRecord::Migration
  def change
    add_column :alianzas, :state, :integer
  end
end
