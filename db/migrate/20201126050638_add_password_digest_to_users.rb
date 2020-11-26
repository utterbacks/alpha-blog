class AddPasswordDigestToUsers < ActiveRecord::Migration[6.0]
  def change
              #table name, field name,    type
    add_column :users, :password_digest, :string
  end
end
