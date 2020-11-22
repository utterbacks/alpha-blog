class AddTimestampsToArticles < ActiveRecord::Migration[6.0]
  def change
    # add colummn to existing table
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
