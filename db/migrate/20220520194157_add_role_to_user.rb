class AddRoleToUser < ActiveRecord::Migration[7.0]
    # User is set to default role of User(0) when created
    def change
        add_column :users, :role, :integer, default: 0
    end
end
